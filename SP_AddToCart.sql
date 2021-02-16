set sql_safe_updates = 0;
drop procedure if exists AddToCart;
delimiter //
CREATE PROCEDURE `AddToCart`(idCustomer int, idShoes int, idOrders int)
BEGIN
	declare orderTemp int default 0;
	declare stockTemp int default 0;
    
	declare exit handler for sqlexception
	begin
		rollback;
		select 'An error has occurred, operation rollbacked an
		d the stored procedure was terminated';
	end;
    
	select orders.id into orderTemp from Orders where id = idOrders;
    select shoe.shoe_stock into stockTemp from Shoe where id = idShoes;
    
    start transaction;
		if orderTemp = 0 or idOrders = null
			then insert into orders(date, Customer_id) value (current_date(), idCustomer);
            set orderTemp = last_insert_id();
		end if;
    
		if  stockTemp > 0
			then insert into order_includes(Orders_id, Shoe_id) values(orderTemp, idShoes);
            update shoe set shoe_stock = (shoe_stock)-1 where shoe.id = idShoes;
		end if;
    commit;
    
END//
delimiter ;