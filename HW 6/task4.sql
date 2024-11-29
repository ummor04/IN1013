--1

SELECT cust_name 
FROM restbill
WHERE bill_total > 450.00 AND waiter_no = 
	(SELECT staff_no
    FROM restStaff
    WHERE headwaiter = 
		(SELECT staff_no
        FROM restStaff 
        WHERE first_name = "Charles")
        )
    
--2 

SELECT first_name, surname
FROM restStaff
WHERE staff_no = 
	(SELECT headwaiter
    FROM restStaff
	Where staff_no =
		(SELECT waiter_no 
		FROM restBill
		WHERE cust_name LIKE "Nerida%" AND bill_date = 160111)
        )

--3

SELECT DISTINCT(cust_name)
FROM restBill
WHERE bill_total = 
	(SELECT min(bill_total))
	
--4

SELECT first_name, surname
FROM restStaff
WHERE staff_no NOT IN
	(SELECT waiter_no
    FROM restBill)
	
--5

SELECT (a.cust_name), b.room_name
FROM restBill as a
INNER JOIN restRest_table as b
on a.table_no = b.table_no
WHERE a.bill_total = 
	(SELECT max(bill_total)
    FROM restBill)

