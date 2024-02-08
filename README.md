# PostgreSql Learning Series
## Day - 1
### Topics covered
-  Create
-  Insert
-  Lower
-  Upper
-  Pipeline(||)
-  Arithmetic operation
-  equal  		=
-  not equal 	<>
-  greater		>
-  greater or equal  >=
-  smaller	<
-  smaller or equal <=
-  between
-  IN
-  not in
-   Update
-   Delete
-   where

## Day - 2 
-   Types of relationship
    -   One to one
    -   One to Many
    -   Many to One
    -   Many to Many

## Day - 3

```
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
	('http://6.jpg', 3),
	('http://7.jpg', 2),
	('http://8.jpg', 3);

```

- DROP PHOTOS TABLE
        
        DROP TABLE PHOTOS;

- SELECT ANY THING FROM PHOTOS TABLE

        SELECT * FROM PHOTOS;

-   Delete operation in relational tables

    -   `ON DELETE NO ACTION` OR `ON DELETE RESTRICT` THROWS AN ERROR ON RELATIONAL DELETE OPERATION

    -   `ON DELETE CASCADE` DELETE THE PHOTO TO WHEN THE USER DELETED

        ```
        create table photos(
            id serial primary key,
            url varchar(200),
            user_id integer references users(id) ON DELETE CASCADE
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
            
        ```

        There will be all the photos.
        ```
            SELECT * FROM PHOTOS;
        ```

        Delete all the photos related to the id = 1 whene the users 1 deleted.
        ```
        DELETE FROM USERS
        WHERE ID = 1;
        ```


    -   `ON DELETE SET NULL`
        ALL users id column will be null after deleting the user from `Users` table

        ```
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

        ```

        ```
        DELETE FROM USERS
        WHERE ID = 1;
        ```

