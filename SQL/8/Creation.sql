CREATE TABLE SALESPEOPLE(
    SNUM number(4) PRIMARY KEY,
    SNAME varchar(20),
    CITY varchar(20),
    COMM DECIMAL(3,2));

CREATE TABLE CUSTOMER(
    CNUM number(4) PRIMARY KEY,
    CNAME varchar(20),
    CITY varchar(20),
    RATING number(3),
    SNUM number(4),
    FOREIGN KEY(SNUM) REFERENCES SALESPEOPLE(SNUM));

CREATE TABLE ORDERS(
    ONUM number(5) PRIMARY KEY,
    AMT DECIMAL(7,2),
    ODATE date,
    CNUM number(4),
    SNUM number(4),
    FOREIGN KEY(CNUM) REFERENCES CUSTOMER(CNUM),
    FOREIGN KEY(SNUM) REFERENCES SALESPEOPLE(SNUM));

INSERT ALL
INTO SALESPEOPLE VALUES (5001, 'James Hoog', 'New York', 0.15)
INTO SALESPEOPLE VALUES (5002, 'Nail Knite', 'Paris', 0.13)
INTO SALESPEOPLE VALUES (5005, 'Pit Alex', 'London', 0.11)
INTO SALESPEOPLE VALUES (5006, 'Mc Lyon', 'Paris', 0.14)
INTO SALESPEOPLE VALUES (5007, 'Paul Adam', 'Rome', 0.13)
INTO SALESPEOPLE VALUES (5003, 'Lauson Hen', 'San Jose', 0.12)
INTO CUSTOMER VALUES (3002, 'Nick Rimando', 'New York', 100, 5001)
INTO CUSTOMER VALUES (3007, 'Brad Davis', 'New York', 200, 5001)
INTO CUSTOMER VALUES (3005, 'Graham Zusi', 'California', 200, 5002)
INTO CUSTOMER VALUES (3008, 'Julian Green', 'London', 300, 5002)
INTO CUSTOMER VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006)
INTO CUSTOMER VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
INTO CUSTOMER VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007)
INTO CUSTOMER VALUES (3001, 'Brad Guzan', 'London', NULL, 5005)
INTO ORDERS VALUES (70001, 150.5, '05-OCT-12', 3005, 5002)
INTO ORDERS VALUES (70009, 270.65, '10-SEP-12', 3001, 5005)
INTO ORDERS VALUES (70002, 65.26, '05-OCT-12', 3002, 5001)
INTO ORDERS VALUES (70004, 110.5, '17-AUG-12', 3009, 5003)
INTO ORDERS VALUES (70007, 948.5, '10-SEP-12', 3005, 5002)
INTO ORDERS VALUES (70005, 2400.6, '27-JUL-12', 3007, 5001)
INTO ORDERS VALUES (70008, 5760, '10-SEP-12', 3002, 5001)
INTO ORDERS VALUES (70010, 1983.43, '10-OCT-12', 3004, 5006)
INTO ORDERS VALUES (70003, 2480.4, '10-OCT-12', 3009, 5003)
INTO ORDERS VALUES (70012, 250.45, '27-JUN-12', 3008, 5002)
INTO ORDERS VALUES (70011, 75.29, '17-AUG-12', 3003, 5007)
INTO ORDERS VALUES (70013, 3045.6, '25-APR-12', 3002, 5001)
SELECT * FROM DUAL;



