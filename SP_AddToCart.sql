drop procedure AddToCart;
delimiter //
CREATE PROCEDURE `AddToCart`(idCustomer int, idShoes int, idOrders int)
BEGIN
	declare orderTemp int default 0;
	declare stockTemp int default 0;
	select orders.id into orderTemp from Orders where id = idOrders;
    select shoe.stock into stockTemp from Shoe where id = idShoes;
    
    if orderTemp = 0 or idOrders = null
		then 
			insert into orders(date, Customer_id) value (current_date(), idCustomer);
            select last_insert_id() into orderTemp;
	end if;
    
    if  stockTemp > 0
		then
			insert into order_includes(Orders_id, Shoe_id) values(orderTemp, idShoes);
			update assignment2.shoe set shoe.stock = shoe.stock-1 where shoe.id = idShoes;
	end if;
END//
delimiter ;