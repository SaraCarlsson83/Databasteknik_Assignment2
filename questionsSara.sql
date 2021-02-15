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

 drop function getTextRating;
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

select getTextRating(1.6);


-- drop view all_averageRates;
create view all_averageRates as 
select label.label_name, name.shoe_name, size.size_name, avg(rating_alternatives.rating_numbers), getTextRating(avg(rating_alternatives.rating_numbers)) from shoe
left join label on label.id = shoe.label_id
left join name on name.id = shoe.Name_id
left join size on size.id = shoe.Size_id
left join rating on rating.Shoe_id = shoe.id
left join rating_alternatives on rating_alternatives.id = rating.RatingAlternatives_id
group by shoe.id;

select * from all_averageRates;
select*from shoe;
