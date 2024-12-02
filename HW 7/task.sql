--1 

CREATE VIEW samsBills
AS SELECT b.first_name, b.surname, a.bill_date, a.cust_name, a.bill_total
FROM restbill as a JOIN reststaff as b
ON a.waiter_no = b.staff_no
WHERE b.first_name = "Sam";

--2 

SELECT * 
FROM samsBills
WHERE bill_total > 400;

--3

CREATE VIEW roomTotals
AS SELECT a.room_name, SUM(bill_total) AS total_sum
FROM restrest_table as a
JOIN restbill as b
ON a.table_no = b.table_no
GROUP BY a.room_name

--4 

CREATE VIEW teamTotals
AS SELECT CONCAT(c.first_name, ' ', c.surname) AS headwaiter_name, SUM(a.bill_total) AS total_sum
FROM restBill AS a
JOIN restStaff AS b ON a.waiter_no = b.staff_no
LEFT JOIN 
    restStaff AS c ON b.headwaiter = c.staff_no
GROUP BY 
    c.staff_no, c.first_name, c.surname;
    