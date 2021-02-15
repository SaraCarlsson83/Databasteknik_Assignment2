select * from rating;
select * from rating_alternatives;
delimiter //
-- drop function average_rate;
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

select average_rate(40);


drop view all_averageRates;
create view all_averageRates as 
select label.label_name, name.shoe_name, size.size_name, avg(rating_alternatives.rating_numbers) from shoe
left join label on label.id = shoe.label_id
left join name on name.id = shoe.Name_id
left join size on size.id = shoe.Size_id
left join rating on rating.Shoe_id = shoe.id
left join rating_alternatives on rating_alternatives.id = rating.RatingAlternatives_id
group by shoe.id;

select * from all_averageRates;
select*from shoe;



