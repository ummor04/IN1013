--1 

SELECT a.first_name, a.surname, count(b.bill_no) as no_bills
FROM restStaff as a
INNER JOIN restBill as b
ON a.staff_no = b.waiter_no
GROUP BY a.first_name, a.surname, b.bill_date
HAVING count(b.bill_no) > 2

--2 

SELECT room_name, count(table_no) as no_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name

--3 

SELECT b.room_name, count(a.bill_no)
FROM restBill as a
INNER JOIN restRest_table as b
ON a.table_no = b.table_no 
GROUP BY b.room_name

--4

SELECT a.headwaiter, SUM(b.bill_total)
FROM restStaff as a
INNER JOIN restBill as b
ON a.staff_no = b.waiter_no
group by a.headwaiter

--5

SELECT cust_name
FROM restBill 
GROUP BY cust_name
HAVING avg(bill_total) > 400

--6

SELECT a.first_name, a.surname, count(b.bill_no) as no_bills
FROM restStaff as a
INNER JOIN restBill as b
ON a.staff_no = b.waiter_no
GROUP BY a.first_name, a.surname, b.bill_date
HAVING count(b.bill_no) > 3
