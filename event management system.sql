-- create a database
CREATE DATABASE event_management_ststem;
-- use this database
USE event_management_ststem;
-- create events table
CREATE TABLE all_events(
	e_id INT PRIMARY KEY,
    e_name VARCHAR(20) NOT NULL,
    e_manager INT, 
    amount DECIMAL(10, 2)
);
-- create users table
CREATE TABLE all_users(
	u_id INT PRIMARY KEY,
    u_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE, 
    phone char(11),
    address VARCHAR(100),
    e_id INT,
    CONSTRAINT fk_event_id FOREIGN KEY(e_id) REFERENCES all_events(e_id)
);
-- create event_info table
CREATE TABLE event_info(
	ei_id INT PRIMARY KEY,
    seat INT NOT NULL,
    meal VARCHAR(100),
    ei_type VARCHAR(30),
	ei_date date,
    ei_time TIME,
    e_id INT,
    CONSTRAINT fk_vanue_event_id FOREIGN KEY(e_id) REFERENCES all_events(e_id)
);
-- create payment table
CREATE TABLE payment(
	payment_mathod VARCHAR(20),
    e_id INT,
    CONSTRAINT fk_pay_event_id FOREIGN KEY(e_id) REFERENCES all_events(e_id),
    u_id INT,
    CONSTRAINT fk_pay_user_id FOREIGN KEY(u_id) REFERENCES all_users(u_id)
);
-- insert events data
INSERT INTO all_events
VALUES
	(100, 'Emma Johnson', 211, 20000),
    (101, 'Christopher Clark', 212, 30000),
    (102, 'Emily Anderson', 213, 40000),
    (103, 'David Thompson', 214, 25000),
    (104, 'Sarah Wilson', 215, 35000),
    (105, 'Michael Davis', 216, 45000),
    (106, 'Daniel Evans', 217, 55000),
    (107, 'Christopher Clark', 218, 56000);
-- insert users data
INSERT INTO all_users
VALUES
  (10, 'Sophia Turner', 'sophia@example.com', '3333333333', '40 Windfall StreetFairborn, OH 45324', 100),
  (11, 'Matthew Wilson', 'matthew@example.com', '9999999999', '890 Sleepy Hollow Ave. Huntersville, NC 28078', 101),
  (12, 'Ava Thomas', 'ava@example.com', '8888888888', '9755 St Louis St. Owosso, MI 48867', 102),
  (13, 'James Brown', 'james@example.com', '7777777777', '8590 Charles Lane Hollis, NY 11423', 103),
  (14, 'Mia Martin', 'mia@example.com', '6666666666', '9364 Airport Road Crofton, MD 21114', 104),
  (15, 'Benjamin Rodriguez', 'benjamin@example.com', '5555555555', '71 E. Green Ave. Detroit, MI 48205', 105),
  (16, 'Charlotte Scott', 'charlotte@example.com', '4444444444', '9364 Airport Road Crofton, MD 21114', 106),
  (17, 'Charlotte Scott', 'charlote@example.com', '4466644664', '8590 Charles Lane Hollis, NY 11423', 107);
-- insert event_info data
INSERT INTO event_info
VALUES
  (1000, 100, 'Cake, cup Cake, Salad, Bread, Steak, Shrimp, Grape Juice', 'Birthday party', "2023-08-01", "2:59:59", 100),
  (1001, 200, 'Bread, Spaghetti, Pizza, Hamburger, Cheese, Apple Juice', 'Wedding', "2023-08-02", "3:59:59", 101),
  (1002, 150, 'Steak, Tuna Steak, Fish, Shrimp, Sausages, Apple Juice, Grape Juice', 'Office Event', "2023-08-03", "4:59:59", 102),
  (1003, 300, 'Salad, Sandwich, Cheese, Sausages, Grape Juice', 'Wedding', "2023-08-04", "5:59:59", 103),
  (1004, 500, 'Fish, Shrimp, Rice, Eggs, Apple Juice', 'Halloween Party', "2023-08-05", "6:59:59", 104),
  (1005, 300, 'Rice, Pizza, Hamburger, Eggs, Cheese, Cold Drinks', 'Birthday party', "2023-08-06", "7:59:59", 105),
  (1006, 250, 'Salad, Sandwich,Sausages, Apple Juice, Grape Juice, Pie, Cake', 'Birthday party', "2023-08-07", "8:59:59", 106),
  (1007, 120, 'Salad, Sandwich, Bread, Steak, Tuna Steak', 'Office Event', "2023-08-08", "9:59:59", 107);

-- insert payment data
INSERT INTO payment
VALUES
	("bkash", 100, 10),
    ("roket", 101, 11),
    ("nogod", 102, 12),
    ("ucash", 103, 13),
    ("bkash", 104, 14),
    ("DBBL", 105, 15),
    ("SIBL", 106, 16),
    ("BRAC", 107, 17);

SELECT * FROM all_events;
SELECT * FROM all_users;
SELECT * FROM event_info;
SELECT * FROM payment;
