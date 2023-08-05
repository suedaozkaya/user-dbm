CREATE TABLE users(
user_id CHAR(7) NOT NULL,
username VARCHAR(30) NOT NULL,
age INT,
reg_date DATE,
email VARCHAR(50) UNIQUE,
phone_number VARCHAR(10),
CONSTRAINT pd_id PRIMARY KEY(user_id),
CONSTRAINT age CHECK(age BETWEEN 0 AND 99)
);

CREATE TABLE address(
address_id CHAR(7) NOT NULL, 
zip_code CHAR(5) NOT NULL,
apt_number VARCHAR(10),
CONSTRAINT id_fk FOREIGN KEY(address_id) REFERENCES users(user_id)
ON DELETE CASCADE
);


-- CREATE
INSERT INTO users VALUES(1234567, 'Mert Dogan', 25, '2017-04-21','mertdogan123@gmail.com','5554443322');
INSERT INTO users VALUES(1111111, 'Seray Kaya', 21, '2019-12-23','kayaseray3@ghotmail.com','5554442112');
INSERT INTO users VALUES(1515115, 'Ayse Bulut', 33, '2009-10-21','aysebulutt@gmail.com','5513331111');
INSERT INTO users VALUES(2121212, 'Burak Kus', 24, '2021-03-12','burakkus19@gmail.com','5552221515');
INSERT INTO users VALUES(7373737, 'Naz Dogan', 25, '2022-05-22','nazdogan1995@hotmail.com','5551116666');
INSERT INTO users VALUES(5656565, 'Derya Sonmez', 39, '2015-15-08', 'derya123@yahoo.com', '5554441515');

INSERT INTO address VALUES(1234567, 10001, 10);
INSERT INTO address VALUES(1111111, 10002, 152);
INSERT INTO address VALUES(1515115, 10003, 13);
INSERT INTO address VALUES(2121212, 10004, 25);
INSERT INTO address VALUES(7373737, 10005, 42);
INSERT INTO address VALUES(5656565, 10006, 73);


-- READ
SELECT * FROM users;

SELECT * FROM address;

SELECT * FROM users, address WHERE users.user_id= address.address_id;

SELECT username,age,reg_date,email,phone_number FROM users WHERE user_id=1111111;
 
SELECT * FROM users WHERE age<30;

SELECT username, age FROM users ORDER BY user_id DESC;

-- UPDATE
UPDATE users 
SET username = 'Fatma Bulut'
WHERE email = 'aysebulutt@gmail.com';

UPDATE users
SET age = 25
WHERE username = 'Burak Kus';

UPDATE address
SET zip_code=55555
WHERE address_id = 1234567;

-- DELETE
DELETE FROM users
WHERE user_id = 5656565;

DELETE FROM users
WHERE user_id = 1111111;



