create table users(
	id serial primary key,
	username varchar(50)
);
insert into users(username)
values
	('monahen94'),
	('pferre'),
	('99strome'),
 ('NAME1'), 
	('NAME2');
DROP TABLE USERS;
select * from users;

create table photos(
	id serial primary key,
	url varchar(200),
	user_id integer references users(id)
);

insert into photos(url, user_id)
values 
	('http://facebook.com', 3);

-- select * from photos;
insert into photos(url, user_id)
values
	('http://two.jpg', 1),
	('http://two.jpg', 2),
	('http://two.jpg', 2),
	('http://two.jpg', 3),
	('http://two.jpg', 3),
	('http://two.jpg', 3);

select * from  photos
where user_id = 2;

select * from users;

select url, username from photos
join users on users.id = photos.user_id;

create table boats (
	id serial primary key,
	name varchar(50)
);

insert into boats (name)
values 	('Rogue Wave'),
		('Harbor Master');
		
create table crew_members(
	id serial primary key,
	first_name varchar(50),
	boat_id integer references boats(id)
);

drop table crew_members;

insert into crew_members (first_name, boat_id) 
values 	('Alex', 1),
		('Lucia', 1),
		('Ari', 2);

select name, first_name
from boats
left join crew_members
on boats.id = crew_members.boat_id;