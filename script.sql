DROP DATABASE IF EXISTS `nala_store`;
CREATE DATABASE `nala_store`;
USE `nala_store`;

CREATE TABLE customer (
	cust_id CHAR(5) NOT NULL,
    cust_name VARCHAR(50),
    phone_no VARCHAR(12),
    birth_date DATE,
    age INT,
    primary key (cust_id)
);

CREATE TABLE items (
	item_id CHAR(5) NOT NULL,
    item_name VARCHAR(50),
    item_cost VARCHAR(12),
    item_weight VARCHAR(12),
    item_color VARCHAR(12),
    primary key (item_id)
);


CREATE TABLE purchase (
	bill_no INT NOT NULL,
    bill_date DATE,
    item_id CHAR(5),
    cust_id CHAR(5),
    primary key (bill_no)
);



INSERT INTO customer (cust_id, cust_name, phone_no, birth_date, age)
VALUES
('C01', 'Agatha', '0963512200', '1979-02-01', timestampdiff(YEAR, birth_date, CURDATE())),
('C02', 'Ananda', '0963601234', '1980-10-01', timestampdiff(YEAR, birth_date, CURDATE())),
('C03', 'Adinda', '0963129000', '1985-12-20', timestampdiff(YEAR, birth_date, CURDATE())),
('C04', 'James', '0963511290', '1983-05-13', timestampdiff(YEAR, birth_date, CURDATE())),
('C05', 'Selly', '0963607788', '1969-07-25', timestampdiff(YEAR, birth_date, CURDATE())),
('C06', 'Laura', '0963512200', '1986-02-05', timestampdiff(YEAR, birth_date, CURDATE())),
('C07', 'Jerry', '0988601234', '1987-10-25', timestampdiff(YEAR, birth_date, CURDATE())),
('C08', 'Tom', '0978129034', '1981-11-20', timestampdiff(YEAR, birth_date, CURDATE())),
('C09', 'Spike', '0986515590', '1983-02-28', timestampdiff(YEAR, birth_date, CURDATE())),
('C11', 'Dola', '0978601188', '1969-04-25', timestampdiff(YEAR, birth_date, CURDATE()));


INSERT INTO items (item_id, item_name, item_cost, item_weight, item_color)
VALUES
('I01', 'hand bag', '799', '600', 'black'),
('I02', 'tote bag', '999', '600', 'dark blue'),
('I03', 'back pack', '899', '600', 'dark grey'),
('I04', 'sling bag', '599', '600', 'dark brown'),
('I05', 'wallet', '399', '600', 'light grey'),
('I06', 'handkerchief', '299', '600', 'light purple'),
('I07', 'scarf', '599', '600', 'magenta'),
('I08', 'glasses', '299', '600', 'maroon'),
('I09', 'summer hat', '499', '600', 'green'),
('I10', 'rainy hat', '399', '600', 'maldives'),
('I11', 'winter hat', '399', '600', 'purple'),
('I12', 'autumn hat', '399', '600', 'pink');


INSERT INTO purchase (bill_no, bill_date, item_id, cust_id)
VALUES
(01, '2024-09-10', 'I02', 'C08'),
(02, '2024-09-10', 'I04', 'C07'),
(03, '2024-09-10', 'I01', 'C05'),
(04, '2024-09-10', 'I05', 'C03'),
(05, '2024-09-10', 'I07', 'C02'),
(06, '2024-09-10', 'I02', 'C04'),
(07, '2024-09-10', 'I08', 'C09'),
(08, '2024-09-10', 'I03', 'C01'),
(09, '2024-09-10', 'I08', 'C05'),
(10, '2024-09-10', 'I11', 'C11'),
(11, '2024-09-10', 'I05', 'C11'),
(12, '2024-09-10', 'I09', 'C06');


#ALTER TABLE purchase ADD CONSTRAINT FOREIGN KEY(cust_id) REFERENCES customer(cust_id);
#DESCRIBE purchase;