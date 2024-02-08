select 1
delete from users
where id = 1;

-- CREATE TABLES AND INSERT VALUES
-- ...................................

create table photos(
	id serial primary key,
	url varchar(200),
	user_id integer references users(id)
);
insert into photos(url, user_id)
values
	('http://1.jpg', 4),
	('http://2.jpg', 1),
	('http://3.jpg', 1),
	('http://4.jpg', 1),
	('http://5.jpg', 2),
	('http://6.jpg', 3);
	('http://7.jpg', 2),
	('http://8.jpg', 3);

DROP PHOTOS TABLE
.....................
DROP TABLE PHOTOS;

SELECT ANY THING FROM PHOTOS TABLE
------------------------------------
SELECT * FROM PHOTOS;

CREATE AND INSERT VALUES IN PHOTOS TABLE
------------------------------------------
 create table photos(
	id serial primary key,
	url varchar(200),
	user_id integer references users(id) ON DELETE SET NULL
);
insert into photos(url, user_id)
values
	('http://1.jpg', 4),
	('http://2.jpg', 1),
	('http://3.jpg', 1),
	('http://4.jpg', 1),
	('http://5.jpg', 2),
	('http://6.jpg', 3),
	('http://7.jpg', 2),
	('http://8.jpg', 3);

SELECT * FROM PHOTOS;
DELETE FROM USERS
WHERE ID = 1;

SELECT * FROM PHOTOS;
DROP TABLE PHOTOS;
