create table Out_Of_Stock (
id int not null auto_increment primary key, 
date datetime not null DEFAULT CURRENT_TIMESTAMP,
Shoe_id int not null, 
foreign key (shoe_id) references shoe(id));

Delimiter //
create trigger last_shoe
after update
on shoe
for each row
Begin
	if stock = 0
		then 
			insert into out_of_stock (id) values (old.id);
	end if;
End
//Delimiter ;
 