CREATE DATABASE event_management_ststem;
use event_management_ststem;

CREATE TABLE all_events(
	e_id INT PRIMARY KEY,
    e_name VARCHAR(20) NOT NULL,
    e_manager INT, 
    amount DECIMAL(10, 2)
);
CREATE TABLE all_users(
	u_id INT PRIMARY KEY,
    u_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE, 
    phone char(11),
    address VARCHAR(100),
    e_id INT,
    CONSTRAINT fk_event_id FOREIGN KEY(e_id) REFERENCES all_events(e_id)
);
CREATE TABLE vanue(
	e_date date,
    e_time TIME,
    e_id INT,
    CONSTRAINT fk_vanue_event_id FOREIGN KEY(e_id) REFERENCES all_events(e_id)
);
CREATE TABLE payment(
	payment_mathod VARCHAR(20),
    e_id INT,
    CONSTRAINT fk_pay_event_id FOREIGN KEY(e_id) REFERENCES all_events(e_id),
    u_id INT,
    CONSTRAINT fk_pay_user_id FOREIGN KEY(u_id) REFERENCES all_users(u_id)
);

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

SELECT * FROM all_events;
SELECT * FROM all_users;
SELECT * FROM vanue;
SELECT * FROM payment;