create table comments(
	id serial primary key,
	contents varchar(100),
	user_id int references users(id),
	photo_id int references photos(id)
);

insert into users(id, username) values (1, 'Hello')

insert into comments(contents, user_id, photo_id)
values
('Non est totam', '3', '4'),
('Minima doloram reciedis', '2', '3'),
('Non est totam', '2', '3'),
('Non est totam', '1', '3'),
('Non est totam', '1', '3')