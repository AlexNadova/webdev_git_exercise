CREATE DATABASE git_exercise;

USE git_exercise;

CREATE TABLE customers (
  id int PRIMARY KEY AUTO_INCREMENT,
  fname nvarchar(20) NOT NULL,
  lname nvarchar(20) NOT NULL,
  phone_number varchar(20),
  email nvarchar(40) NOT NULL
);
CREATE TABLE products (
  id int PRIMARY KEY AUTO_INCREMENT,
  customerId int NOT NULL,
  name nvarchar(40) NOT NULL,
  price float NOT NULL,
  description nvarchar(255) NOT NULL,
  FOREIGN KEY (customerId) REFERENCES customers(id)
);

INSERT INTO customers (fname, lname, phone_number, email)
values 
('Alexandra', 'Nadova', '15484326', 'alexn@gmail.com'),
('Veronika', 'Uhrinova', '64825966', 'verca@gmail.com'),
('Lukas', 'Nagy', '35486672', 'lukasqo@gmail.com'),
('name', 'surname', '6659442', 'name@email.com'),
('mr.', 'incognito', '99999999', 'mr.incognito@gmail.com');
INSERT INTO products (customerId, name, price, description)
values 
('2', 'Amazing product #1', '12.59', 'This is an amazing product!'),
('1', 'Amazing product #2', '42.2', 'This is an amazing product!'),
('1', 'Amazing product #3', '12.59', 'This is an amazing product!'),
('4', 'Amazing product #4', '11.33', 'This is an amazing product!'),
('3', 'Amazing product #5', '24.11', 'This is an amazing product!'),
('2', 'Amazing product #6', '10', 'This is an amazing product!'),
('1', 'Amazing product #7', '11.85', 'This is an amazing product!'),
('5', 'Amazing product #8', '70.2', 'This is an amazing product!'),
('3', 'Amazing product #9', '120.99', 'This is an amazing product!'),
('3', 'Amazing product #10', '3.99', 'This is an amazing product!'),
('3', 'Amazing product #11', '2.59', 'This is an amazing product!'),
('2', 'Amazing product #12', '0.99', 'This is an amazing product!'),
('5', 'Amazing product #13', '10', 'This is an amazing product!'),
('1', 'Amazing product #14', '5', 'This is an amazing product!'),
('2', 'Amazing product #15', '42.38', 'This is an amazing product!'),
('4', 'Amazing product #16', '23.95', 'This is an amazing product!'),
('2', 'Amazing product #17', '44.22', 'This is an amazing product!'),
('2', 'Amazing product #18', '666', 'This is an amazing product!'),
('1', 'Amazing product #19', '7.89', 'This is an amazing product!'),
('4', 'Amazing product #20', '1.59', 'This is an amazing product!'),
('4', 'Amazing product #21', '20.99', 'This is an amazing product!'),
('5', 'Amazing product #22', '339.99', 'This is an amazing product!');