-- select * from rating;
-- select * from rating_alternatives;
-- drop function if exists average_rate;
delimiter //

create function average_rate (shoeId int)
returns double
reads sql data
begin
declare average double default 0;
select avg(rating_alternatives.rating_numbers) from rating_alternatives
join rating on rating_alternatives.id = rating.RatingAlternatives_id 
where rating.Shoe_id = shoeId
into average;
return average;
end//
delimiter ;

-- select average_rate(40) as avg;

delimiter //
create function getTextRating (numberRating double)
returns varchar(50)
reads sql data
begin
declare answer varchar(50);
if numberRating > 0 and numberRating <= 1.5
then select 'Missnöjd' into answer;
elseif numberRating > 1.5 and numberRating <= 2.5
then select 'Ganska nöjd'into answer;
elseif numberRating > 2.5 and numberRating <= 3.5
then select 'Nöjd' into answer;
elseif numberRating > 3.5 and numberRating <= 4
then select 'Mycket nöjd' into answer;
end if;
return answer;
end//

delimiter ;

-- select getTextRating(1.6);

-- drop view if exists all_averageRates;
create view all_averageRates as 
select label.label_name, name.shoe_name, size.size_name, avg(rating_alternatives.rating_numbers), getTextRating(avg(rating_alternatives.rating_numbers)) from shoe
left join label on label.id = shoe.label_id
left join name on name.id = shoe.Name_id
left join size on size.id = shoe.Size_id
left join rating on rating.Shoe_id = shoe.id
left join rating_alternatives on rating_alternatives.id = rating.RatingAlternatives_id
group by shoe.id;

-- Stored procedure "Rate" som lägger till ett betyg och en kommentar på en specifik produkt för en specifik kund
delimiter //
CREATE PROCEDURE `Rate`(procedure_rate int, procedure_comment varchar(150), procedure_shoeId int, procedure_customerId int)
BEGIN
declare rateId int default 0;
select rating_alternatives.id from rating_alternatives where rating_alternatives.rating_numbers = procedure_rate into rateId; 
insert into rating (RatingAlternatives_id, Comment, Shoe_id, Customer_id) values (rateId, procedure_comment, procedure_shoeId, procedure_customerId);
END//
delimiter ;
call Rate (3, null, 45, 12);

delimiter //
CREATE PROCEDURE `Rate_Strings`(procedure_rate varchar(50), procedure_comment varchar(150), procedure_shoeId int, procedure_customerId int)
BEGIN
declare rateId int default 0;
select rating_alternatives.id from rating_alternatives where rating_alternatives.options = procedure_rate into rateId; 
insert into rating (RatingAlternatives_id, Comment, Shoe_id, Customer_id) values (rateId, procedure_comment, procedure_shoeId, procedure_customerId);
END//
delimiter ;

call Rate_Strings('Mycket nöjd', null, 45, 13);

set sql_safe_updates = 0;
-- drop procedure AddToCart;
delimiter //
CREATE PROCEDURE `AddToCart`(idCustomer int, idShoes int, idOrders int)
BEGIN
	declare orderTemp int default 0;
	declare stockTemp int default 0;
    declare exit handler for sqlexception
    
	begin
		rollback;
		resignal set message_text = 'Något gick fel när varan skulle läggas till i varukorgen';
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
            select ("Varan har lagts till i ordern") as message;
		else
			select ("Varan är tyvärr slut i lagret") as message;
		end if;
    commit;
END//
delimiter ;


create table Out_Of_Stock (
id int not null auto_increment primary key, 
date datetime not null DEFAULT CURRENT_TIMESTAMP,
Shoe_id int not null, 
foreign key (shoe_id) references shoe(id));

-- drop trigger if exists last_shoe;
Delimiter //
create trigger last_shoe
after update
on shoe
for each row
Begin
	if new.shoe_stock = 0
		then 
			insert into out_of_stock (shoe_id) values (old.id);
	end if;
End//
Delimiter ;

Delimiter //
CREATE PROCEDURE `getLatestOrderId`(userName varchar(50), OUT orderID int)
BEGIN
	select orders.id from orders
    join customer
    on customer.id = orders.customer_id
    where customer.user_name = userName
    order by orders.id desc
    limit 1 
    into orderID;
    
END//
Delimiter ;

