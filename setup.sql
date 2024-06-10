DROP DATABASE IF EXISTS dealership_db;
CREATE DATABASE IF NOT EXISTS dealership_db;
USE dealership_db;

CREATE TABLE DEALERSHIPS(
    DEALERSHIP_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(50),
    PHONE VARCHAR(12)
);

CREATE TABLE VEHICLES(
    VIN_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    SOLD VARCHAR(3)
);

CREATE TABLE INVENTORY(
    DEALERSHIP_ID INT,
    VIN_ID INT,
    YEAR INT,
    PRIMARY KEY(DEALERSHIP_ID, VIN_ID),
    FOREIGN KEY(DEALERSHIP_ID) REFERENCES DEALERSHIPS(DEALERSHIP_ID),
    FOREIGN KEY(VIN_ID) REFERENCES VEHICLES(VIN_ID)
);

CREATE TABLE SALES_CONTRACTS(
    CONTRACT_ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN_ID INT,
    SALE_DATE VARCHAR(50),
    FOREIGN KEY(VIN_ID) REFERENCES VEHICLES(VIN_ID),
	FOREIGN KEY(DEALERSHIP_ID) REFERENCES DEALERSHIPS(DEALERSHIP_ID)
);

CREATE TABLE LEASE_CONTRACTS(
    LEASE_ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN_ID INT,
    LEASE_DATE VARCHAR(50),
    FOREIGN KEY(VIN_ID) REFERENCES VEHICLES(VIN_ID)
);

-- Insert seed data into DEALERSHIPS
INSERT INTO DEALERSHIPS (NAME, ADDRESS, PHONE) VALUES
('Dealership One', '1234 Elm St', '555-1234'),
('Dealership Two', '5678 Oak St', '555-5678'),
('Dealership Three', '9101 Maple St', '555-9101'),
('Dealership Four', '1357 Pine St', '555-1357'),
('Dealership Five', '2468 Cedar St', '555-2468'),
('Dealership Six', '3690 Birch St', '555-3690'),
('Dealership Seven', '4823 Walnut St', '555-4823'),
('Dealership Eight', '5732 Maple St', '555-5732'),
('Dealership Nine', '6912 Willow St', '555-6912'),
('Dealership Ten', '7645 Poplar St', '555-7645');

-- Insert seed data into VEHICLES
INSERT INTO VEHICLES (VIN_ID, NAME, SOLD) VALUES
(1001, 'Toyota Camry', 'No'),
(1002, 'Honda Accord', 'Yes'),
(1003, 'Ford Focus', 'No'),
(1004, 'Chevrolet Malibu', 'Yes'),
(1005, 'Nissan Altima', 'No'),
(1006, 'Hyundai Sonata', 'No'),
(1007, 'Kia Optima', 'Yes'),
(1008, 'Subaru Impreza', 'No'),
(1009, 'Mazda 3', 'Yes'),
(1010, 'Volkswagen Passat', 'No'),
(1011, 'BMW 3 Series', 'No'),
(1012, 'Audi A4', 'Yes'),
(1013, 'Mercedes-Benz C-Class', 'No'),
(1014, 'Lexus IS', 'Yes'),
(1015, 'Jaguar XE', 'No'),
(1016, 'Volvo S60', 'Yes'),
(1017, 'Tesla Model 3', 'No'),
(1018, 'Ford Mustang', 'Yes'),
(1019, 'Chevrolet Camaro', 'No'),
(1020, 'Dodge Charger', 'Yes');

-- Insert seed data into INVENTORY
INSERT INTO INVENTORY (DEALERSHIP_ID, VIN_ID, YEAR) VALUES
(1, 1001, 2020),
(1, 1002, 2019),
(2, 1003, 2018),
(2, 1004, 2021),
(3, 1005, 2017),
(3, 1006, 2016),
(4, 1007, 2015),
(4, 1008, 2014),
(5, 1009, 2013),
(5, 1010, 2012),
(6, 1011, 2011),
(6, 1012, 2010),
(7, 1013, 2009),
(7, 1014, 2008),
(8, 1015, 2007),
(8, 1016, 2006),
(9, 1017, 2005),
(9, 1018, 2004),
(10, 1019, 2003),
(10, 1020, 2002);

-- Insert seed data into SALES_CONTRACTS
INSERT INTO SALES_CONTRACTS (DEALERSHIP_ID, VIN_ID, SALE_DATE) VALUES
(1, 1002, '2023-01-15'),
(2, 1004, '2023-02-20'),
(3, 1007, '2023-03-25'),
(4, 1009, '2023-04-30'),
(5, 1012, '2023-05-05'),
(6, 1014, '2023-06-10'),
(7, 1016, '2023-07-15'),
(8, 1018, '2023-08-20'),
(9, 1020, '2023-09-25'),
(10, 1019,'2024-01-04');

-- Insert seed data into LEASE_CONTRACTS
INSERT INTO LEASE_CONTRACTS (DEALERSHIP_ID, VIN_ID, LEASE_DATE) VALUES
(1, 1001, '2023-01-10'),
(2, 1003, '2023-02-15'),
(3, 1006, '2023-03-20'),
(4, 1008, '2023-04-25'),
(5, 1010, '2023-05-30'),
(6, 1011, '2023-06-04'),
(7, 1013, '2023-07-09'),
(8, 1015, '2023-08-14'),
(9, 1017, '2023-09-19'),
(10, 1019, '2023-10-24');