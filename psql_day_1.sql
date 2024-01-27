-- insert into cities(name, country, population, area) 
-- values
-- ('Delhi', 'India', 3000000,  8334),
-- ('Shanghai', 'China', 33359595,  4015),
-- ('Sao Paulo', 'Brazil', 20950595, 3959);
-- select * from cities;
-- select name, population, country from cities;
-- select name, population / area as density
-- from cities;

-- create table phones(
-- 	name varchar(50),
-- 	manufacturer varchar(50),
-- 	price integer,
-- 	units_sold integer
-- );
-- insert into
-- 	phones(name, manufacturer, price, units_sold)
-- values
-- 	('N1280', 'Nokia', 199, 1925),
-- 	('Iphone 4', 'Apple', 109, 105),
-- 	('Galaxy S', 'Samsung', 19, 925),
-- 	('S5620 Monte', 'Sanmung', 299, 125),
-- 	('N8', 'Nokia', 159, 25);
-- select name, price * units_sold as revenue from phones;

-- Join to string using pipeline = '||'
-- select name || ', ' || country as Location from cities;

-- concat
-- select concat(name, ', ', country) as location from cities;

-- lower or upper
-- select concat(upper(name), ', ', lower(country)) as location from cities;

-- select name, area from cities where  area > 8000;
-- equal  		=
-- not equal 	<>
-- greater		>
-- greater or equal  >=
-- smaller	<
-- smaller or equal <=
-- between
-- IN
-- not in
-- select name from cities where
-- area between 2000 and 4000;
-- name in ('Delhi', 'Shanghai');
-- name not in ('Delhi', 'Shanghai') or area > 5000;
-- select * from phones where manufacturer in ('Samsung',  'Apple');

-- select
-- 	name,
-- 	price * units_sold
-- 		as  total_revenue
-- From
-- 	phones
-- where
-- 	price * units_sold > 10000;

-- update
-- 	cities
-- set 
-- 	population = 100000000
-- where
-- 	name = 'Tokyo';

-- select * from cities;

-- delete
-- from
-- 	cities
-- where
-- 	name = 'Tokyo';

-- update
-- 	phones
-- set
-- 	units_sold = 8085
-- where
-- 	name = 'N8';

-- select * from phones;

