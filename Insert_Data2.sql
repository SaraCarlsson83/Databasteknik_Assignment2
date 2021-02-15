set sql_safe_updates = 0;

alter table price AUTO_INCREMENT=120;
insert into price (value) values (200), (250), (400), (600), (1000);

alter table category AUTO_INCREMENT=70;
insert into category (cat_name) values ('Sandals'), ('Sneakers'), ('Boots'), ('Men'), ('Women'), ('Children');

alter table color AUTO_INCREMENT=80;
insert into color (col_name) values ('Black'), ('White'), ('Yellow'), ('Brown'), ('Pink');

alter table label AUTO_INCREMENT=30;
insert into label (label_name) values ('Ecco'), ('Nike'), ('Adidas'), ('Dr Martens');

alter table size AUTO_INCREMENT=150;
insert into size (Size_name) 
value (22), (29), (38), (39), (40), (41), (44), (46);

alter table name auto_increment = 160;
insert into name(Shoe_name) 
value ('Tessa'), ('Brooke'), ('Johnny'), ('Percy'), ('Voxna'), ('Yxhult');
 
alter table shoe AUTO_INCREMENT=40;
insert into shoe (Label_id, Price_id, Size_id, Name_id, stock) values 
(33,120,150,160, 4), (31,121,153,161, 6), (31,122,151,162, 2), (30,123,152,163, 6), 
(32,122,154,164, 5), (33,124,156,165, 2), (30,120,157, 162, 1), (32,124,155,160, 5);


alter table divide_into_category AUTO_INCREMENT=60;
insert into divide_into_category (Shoe_id, Category_id) values 
(40,72), (40,75), 
(41,70), (41,74), 
(42,70), (42,75), 
(43,70), (43,74),
(44,72), (44,74), 
(45,73), (45,72), 
(46,73), (46,70), 
(47,71);

alter table Shoe_color auto_increment = 140;
insert into Shoe_color (Shoe_id, Color_id) values
(40, 82), (40,80), 
(41, 81), (41,84), 
(42, 80), 
(43, 80), 
(44, 84), 
(45, 81), 
(46, 84), 
(47, 80), (47, 82);

alter table Community auto_increment = 20;
insert into Community(com_name) values
('Stockholm'), ('Malmö'), ('Göteborg');

alter table Customer auto_increment = 10;
insert into Customer(first_name, last_name, Adress, Community_id) values
('Agaton', 'Sax', 'Sveavägen', 21),
('Kalle', 'Anka', 'Ankeborgsvägen', 22),
('Musse', 'Pigg', 'Svansvägen', 20),
('Nalle', 'Puh', 'Trädet', 22),
('Mimmi', 'Pigg', 'Svansvägen', 20);

alter table Orders auto_increment = 110;
insert into Orders(date, Customer_id) values
('2020-12-01', 10), -- Agaton Sax
('2020-12-25', 13), -- Nalle Puh
('2021-01-15', 14), -- Mimmi Pigg
('2020-09-25', 11), -- Kalle Anka
('2020-10-25', 11), -- Kalle Anka
('2020-10-25', 12), -- Musse Pigg
('2020-11-15', 13); -- Nalle Puh

alter table rating_alternatives auto_increment = 90;
insert into Rating_Alternatives(options, rating_numbers ) values
('Mycket nöjd', 4),
('Nöjd', 3),
('Ganska nöjd', 2),
('Missnöjd', 1);

alter table order_includes auto_increment = 100;
insert into Order_includes (Orders_id, Shoe_id) values
(110, 40), (110, 44), -- id 10, Agaton Sax
(111, 47), -- id 13, Nalle Puh
(112, 43), -- id 14, Mimmi Pigg; 
(113, 41), (113, 42), -- id 11, Kalle Anka
(114, 43), (114, 47), (114, 40), -- id 11, Kalle Anka
(115, 47), -- id 12, Musse Pigg
(116, 40), (116, 41), (116, 42), (116, 43); -- id 13, Nalle Puh

alter table rating auto_increment = 130;
insert into Rating(Comment, RatingAlternatives_id, shoe_id, Customer_id) values
('Mycket obekväm', 93, 42, 13), -- id 13, Nalle Puh
(null, 90, 43, 14), -- id 14, Mimmi Pigg
('Helt ok för det priset', 91, 47, 12), -- id 12, Musse pigg
(null, 91, 40, 13), -- id 13, Nalle Puh
(null, 93, 43, 13), -- id 13, Nalle Puh
('Bästa skon', 90, 40, 11), -- id 11 Kalle Anka
(null, 91, 47, 11), -- Kalle Anka
('Riktigt dålig', 93, 40, 10), -- Agaton Sax
(null, 92, 44, 10), -- Agaton Sax
(null, 93, 47, 12), -- musse pigg
('Jättenöjd', 91, 43, 11), -- Kalle Anka
(null, 92, 41, 13);

select * from category;
select * from color;
select * from community;
select * from customer;
select * from divide_into_category;
select * from label;
select * from name;
select * from order_includes;
select * from orders;
select * from price;
select * from rating;
select * from rating_Alternatives;
select * from shoe;
select * from shoe_color;
select * from size;
 