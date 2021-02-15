CREATE DEFINER=`root`@`localhost` PROCEDURE `addToCart`(idCustomer int, idShoes int, idOrders int)
BEGIN
	declare orderTemp int default 0;
	select orders.id into orderTemp from Orders where id like idOrders;
    
    if orderTemp = 0 or orderTemp = null
		then 
			insert into orders(Customer_id) value (idCustomer);
            select last_insert_id() into orderTemp;
	end if;
    
    if shoe.stock > 0
		then
			insert into order_includes(Orders_id, Shoe_id) values(orderTemp, idShoes);
			update shoe set stock = stock-1 where shoe.id = idShoes;
	end if;
	
END