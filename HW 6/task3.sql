--1

SELECT a.first_name, a.surname
FROM restStaff as a
INNER JOIN restbill as b
ON a.staff_no = b.waiter_no;
WHERE b.cust_name = "Tanya Singh"

--2

SELECT a.room_date
FROM restRoom_management as a
INNER JOIN restStaff as b
ON a.headwaiter = b.staff_no
WHERE b.first_name = "Charles" AND a.room_name = "Green" AND a.room_date LIKE "1602%";

--3

SELECT b.first_name, b.surname
FROM restStaff as a 
INNER JOIN restStaff as b
ON a.headwaiter = b.headwaiter
WHERE a.first_name = "Zoe";

--4

SELECT a.cust_name, a.bill_total, b.first_name, b.surname
FROM restBill as a
INNER JOIN restStaff as b
ON a.waiter_no = b.staff_no
ORDER BY a.bill_total DESC

--5 

SELECT c.first_name, c.surname
FROM restStaff as a
INNER JOIN restBill as b
on a.staff_no = b.waiter_no
INNER JOIN restStaff as c
on a.headwaiter = c.headwaiter
WHERE b.bill_no = 0014 OR 0017

--6

SELECT a.first_name, a.surname
FROM restStaff as a
INNER JOIN restBill as b
on a.staff_no = b.waiter_no
INNER JOIN restRest_table as c
on b.table_no = c.table_no
WHERE b.bill_date = "160312" AND c.room_name = "Blue"