
create database ems;
use ems;
CREATE TABLE address (
	address_id INT AUTO_INCREMENT PRIMARY KEY,
    address_streetname VARCHAR(50) NOT NULL,
    address_city VARCHAR(50) NOT NULL,
    address_state VARCHAR (2) NOT NULL,
    address_zipcode INT NOT NULL
);
CREATE TABLE department (
	department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
CREATE TABLE employee (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_firstname VARCHAR(50) NOT NULL,
    employee_lastname VARCHAR(50) NOT NULL,
    employee_email VARCHAR(50) NOT NULL,
    addr_id INT NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (addr_id) REFERENCES address (address_id),
	FOREIGN KEY (dept_id) REFERENCES department (department_id)
);

INSERT INTO address VALUES (1, '18th Maple Valley Avenue', "Raleigh", "NC", 12345); 
INSERT INTO address VALUES (2, '205 St Louis Street', "Columbia", "SC", 12346); 
INSERT INTO address VALUES (3, '88 Wood Ridge Circle', "Seattle", "WA", 12347); 
INSERT INTO address VALUES (4, '175 NE 30th Mitchell Road', "San Francisco", "CA", 12348); 
INSERT INTO department VALUES (1001, 'IT');
INSERT INTO department VALUES (1002, 'Engineering');
INSERT INTO department VALUES (1003, 'HR');
INSERT INTO department VALUES (1004, 'Finance');
INSERT INTO employee VALUES (1, 'Antonio', 'Crapps', '001@gmail.com', 2, 1001);
INSERT INTO employee VALUES (2, 'Erica', 'Oytas', '002@gmail.com', 1, 1002);
INSERT INTO employee VALUES (3, 'Jonathan', 'Mallery', '003@gmail.com', 4, 1003);
INSERT INTO employee VALUES (4, 'Renee', 'Thomsen', '004@gmail.com', 3, 1004);
desc address;
select * from address;
desc employee;
select * from employee;
desc department;
select * from department;