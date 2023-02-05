--drop table item
create table item
(
	item_id		int			not null,
	item_name	varchar(30)	not null,
	price		decimal(6,2)
)

--truncate table item
INSERT INTO item(item_id, item_name, price)
values
(1,'Tent',				500),
(2,'Sleeping bag',		300),
(3,'Sleeping pad',		 29),
(4,'Camp stove',		150),
(5,'Cooler',			300),
(6,'Headlamp',			100),
(7,'First-aid kit',		null),
(8,'Camp chairs',		 35),
(9,'Portable lantern',	100),
(10,'Backpack',			300),
(11,'Flash Light',		null);

--found item
select 
	item_id,
	item_name,
	coalesce(price, (select price from item where item_name = 'Flash Light'),
					(select price from item where item_name = 'First-aid kit'),
					(select price from item where item_name = 'Sleeping pad'),
					0)
	as price
from item

	