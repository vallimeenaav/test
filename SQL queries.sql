/* Query 1 : Customers who carry out the most business and least business with Boston Convenience */
select c.Customer_name, sum(b.total_freight) as tot_billed
from customer c, bill b 
where c.bill_id = b.bill_id
group by c.Customer_name 
order by tot_billed desc 
limit 10;

select c.Customer_name, sum(b.total_freight) as tot_billed
from customer c, bill b 
where c.bill_id = b.bill_id
group by c.Customer_name 
order by tot_billed 
limit 10;

/* Query 2 : Yearly Turnover */
select sum(b.total_freight) as tot_billed_USD,YEAR(STR_TO_DATE(b.Bill_Date,"%m/%d/%Y")) as YR 
from customer c,bill b 
where c.bill_id = b.bill_id 
group by YR
order by YR;

/* Query 3 : Business Expansion - most frequently chosen pick-up and drop-off locations */
select r.Pick_up_Location,count(c.Customer_name) as cust_count
from customer c,makes m,request r
where c.Invoice_Number=m.Invoice_Number and 
c.Employee_ID=m.Employee_ID and m.req_id=r.req_id
group by r.Pick_up_Location order by cust_count desc;

select r.drop_Location,count(c.Customer_name) as cust_count
from customer c,makes m,request r
where c.Invoice_Number=m.Invoice_Number and 
c.Employee_ID=m.Employee_ID and m.req_id=r.req_id
group by r.drop_Location order by cust_count desc;

/* Query 4 */
select DRV_id, accidents_committed 
from driver 
where accidents_committed = (select max(accidents_committed) 
							 from driver);

/* Query 5 */
select t.Manager_Emp_ID, count(t.Trip_id)
from trip_manager tm, trip t
where tm.TRM_id = t.Manager_Emp_ID
group by t.Manager_Emp_ID
order by count(t.Trip_id) desc;

/* Query 6 */
select v.type,(v.odometer_reading)
from vehicle v
order by v.odometer_reading desc limit 1;

/* Query 7 */
select concat(gm.first_name, ' ', gm.last_name) as name, sum(g.Weight)
from goods g, goods_manager gm
where gm.emp_id = g.Employee_ID
group by name
order by sum(g.Weight) desc
limit 1;

/* Query 8 */
select rf.store_name,count(rf.store_name) as total_visits
from refreshment_and_fuel rf,stops_at sa
where rf.store_id=sa.Location_ID
group by rf.store_name
order by total_visits desc limit 5;

