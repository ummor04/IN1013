-- 1

SELECT bill_date, bill_total
FROM restbill
WHERE cust_name = "Bob Crow";

-- 2

SELECT distinct(cust_name)
FROM restbill
WHERE cust_name LIKE "%Smith"
ORDER BY cust_name DESC;

--3

SELECT distinct(cust_name)
FROM restbill
WHERE cust_name LIKE "% C%";

--4

SELECT first_name, surname
FROM restStaff
WHERE headwaiter IS NOT NULL;

--5

SELECT * 
FROM restbill
WHERE bill_date LIKE "%%02%%"
	
--6

SELECT distinct(bill_date)
FROM restbill
WHERE bill_date LIKE "15%"
ORDER BY bill_date ASC
	