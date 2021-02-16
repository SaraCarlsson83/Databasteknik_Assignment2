drop database if exists assignment2;
create database assignment2;
use assignment2;

create table Community(
id int not null auto_increment, 
com_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp,
unique(com_name));

create table Price(
id int not null auto_increment, 
value int not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Color(
id int not null auto_increment, 
col_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp, 
unique(col_name));

create table Label(
id int not null auto_increment, 
label_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp, 
unique(label_name));

create table Rating_Alternatives(
id int not null auto_increment, 
options varchar(50) not null, 
rating_numbers int not null,
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Category(
id int not null auto_increment, 
cat_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp, 
unique(cat_name));

create table Customer(
id int not null auto_increment, 
First_Name varchar(50) not null, 
Last_Name varchar(50) not null, 
User_Name varchar(50) not null, 
Password varchar(50) not null, 
Adress varchar(50) not null, 
Community_id int not null,
primary key(id),
foreign key (Community_id) references Community(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp, 
unique(User_name));

create table Size(
id int not null auto_increment, 
Size_name varchar(50) not null,
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Name(
id int not null auto_increment, 
Shoe_name varchar(50) not null,
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp, 
unique(shoe_name));

 
create table Shoe(
id int not null auto_increment, 
Label_id int not null,   
Price_id int not null,
Name_id int not null,
Size_id int not null,
shoe_stock int not null,
primary key(id),
foreign key (Label_id) references Label(id),
foreign key (Price_id) references Price(id),
foreign key (Name_id) references Name(id),
foreign key (Size_id) references Size(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Divide_into_Category(
id int not null auto_increment, 
Shoe_id int not null,
Category_id int,
primary key(id),
foreign key (Shoe_id) references Shoe(id),
foreign key (Category_id) references Category(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

-- Referensintegritet - Om man väljer att ta bort en färg från webbshoppen så tas färgen bort från den skon. 
create table Shoe_color(
id int not null auto_increment, 
Shoe_id int not null, 
Color_id int not null,
primary key(id),
foreign key (Shoe_id) references Shoe(id), 
foreign key (Color_id) references Color(id) on delete cascade,
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);


 -- Referensintegritet 1 - Om en kund tar bort sig själv från en webshop så ska ordern fortfarande ligga kvar
 -- Referensintegritet 2 - Om info om en kund uppdateras så ska även den infon uppdateras i ordern. 
create table Orders(
id int not null auto_increment, 
date Date not null,
Customer_id int,
primary key(id),
foreign key (Customer_id) references Customer(id) on delete set null on update cascade,
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

 -- Referensintegritet 1 - Om en order raderas så ska även det som ligger i ordern raderas.
 -- Referensintegritet 2 - Om en sko i en viss order raderas så sätts det värdet till null. 
create table Order_includes(
id int not null auto_increment, 
Orders_id int,
Shoe_id int,
primary key(id),
foreign key (Orders_id) references Orders(id) on delete cascade,
foreign key (Shoe_id) references Shoe(id) on delete set null,
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

 -- Referensintegritet 1 - Om en sko tas bort ur sortimentet ska även Ratingen av skon tas bort.
create table Rating(
id int not null auto_increment, 
Comment varchar(150),
RatingAlternatives_id int not null,
Shoe_id int not null,
Customer_id int not null, 
primary key(id),
foreign key (RatingAlternatives_id) references Rating_Alternatives(id),
foreign key (Shoe_id) references Shoe(id) on delete cascade,
foreign key (Customer_id) references Customer(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

-- När man vill köpa skor i en webbshop letar man oftast genom vilken kategori som skon tillhör
create index IX_categoryname on category(cat_name);
