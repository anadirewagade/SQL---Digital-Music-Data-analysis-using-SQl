Q1)who is the senior most employee according to the job title?
select * from employee
order by levels desc ---- here order by is used to display the in higher to lower so we can know the highest level of job
limit 1 -- it will show only 1st row in the outpout which is our answer.
----- ANSWER IS MADAN MOHAN

Q2) Which country has the most invoices
select COUNT(*) as C, billing_country  ---- here we used count becuase we need the count of the country, AS stands for alias
from invoice
GROUP BY billing_country ---- Here group by is used because there are multiple country which are repeated in the table 
ORDER BY C desc ---- usimn order by will presnent the table in combome form , in descending order
Limit 1
----- answer is USA.

Q3) what are the top 3 values of total invoices?
select total from invoice
ORDER BY total desc --- it will give highest to lowest value
limit 3 --- will give first 3 rows in output
---- answer is 23.75, 19.8, 19.8

Q4)Which city has the best customers? write a querry which city has the higgest sum of invoice totals. Return both the city name and the sum of invoice total?
select SUM(total) as invoice_total, billing_city --- here sum is used because we need the additon total sum of total colum
FROM invoice
GROUP BY billing_city --- here billimg city is used because billing city is needed in which the hight sale has been recorded
ORDER BY invoice_total desc ---- it will give the highest record
---answer is Praque

Q5)Who is the best customer , the customer spend the most money will be decleared as the best customer? Write the query for the person who has spend the most money?
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total --- here whole data is not present in one table . so from customer table we took this column and make the sum of column total
from customer
JOIN invoice ON customer.customer_id = invoice.customer_id ---- to join differnt column we used simple join.
GROUP BY customer.customer_id
ORDER BY total desc
limit 1
---- answer is Madhav - 144.54 amount spent