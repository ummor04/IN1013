--1

SELECT sum(bill_total) as Income
FROM restbill;

--2

SELECT sum(bill_total) as FebIncome
FROM restbill
WHERE bill_date LIKE "1602%";

--3

SELECT AVG(bill_total)
FROM restbill
WHERE table_no  = 2;

--4

SELECT MIN(no_of_seats) AS Min, MAX(no_of_seats) AS Max, AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name = 'Blue';

--5

SELECT distinct(table_no)
FROM restbill
WHERE waiter_no = 004 or 002