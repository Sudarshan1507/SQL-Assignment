# SQL-Assignment

1.)Single table retrieval

   1.select name from client_master;
   2.select * from client_master;
   3.select name,city from client_master;
   4.select * from product_master;
   5.select name from client_master where name like '_a%';
   6.select name from client_master where city like '_a%';
   7.select * from client_master where city in ('Bombay','Delhi','Madras');
   8.select * from client_master where city in 'Bombay';
   9.select * from client_master where bal_due>10000;
  10.select * from sales_order where s_order_date like '%JAN%';
  11.select * from sales_order where client_no in ('C00001','C00002');
  12.select * from product_master where description in ('1.44 Drive','1.22 Drive');
  13.select * from product_master where sell_price>2000 and sell_price<=5000;
  14.select product_master.*,sell_price*15 from product_master where sell_price>1500 ;
  15.select product_master.*,sell_price*15 as new_selling_price from product_master where sell_price>1500 ;
  16.select * from product_master where cost_price<1500;
  17.select * from product_master order by description;
  18.select cost_price*cost_price from product_master;
  19.select sell_price/cost_price-100 from product_master where description in '540 HDD';
  20.select name,city,state from client_master where state not in 'Maharashtra';
  21.select product_no,description,sell_price from product_master where description like 'M%';
  22.select * from sales_order where order_status ='Canceled' and s_order_date like '%MAY%';

2.)Set Functions and Concatenation :

  23.select count(*) as Total_Order from sales_order;
  24.select avg(cost_price) from product_master;
  25.select min(cost_price) from product_master;
  26.select max(cost_price) as max_price ,min(cost_price) as min_price from product_master;
  27.select count(*) from product_master where cost_price>=1500;
  28.select * from product_master where qty_on_hand<record_lvl;
  29.select c.name ||' has placed order '||s.s_order_no||' on '||s.s_order_date from client_master c,sales_orders where c.client_no = s.client_no;

3.)Having and Group by:

  30.select description , sum(qty_ordered)from product_master p,sales_order_details sod where p.product_no=sod.product_no group by p.description;
  31.select p.product_no,Description,sum(Qty_ordered*Product_rate)from product_master p,sales_order_details sod where p.product_no=sod.product_no group by description,p.product_no
  32.select client_no , avg(qty_ordered),client_no from sales_order s ,sales_order_details s1 where s.s_order_no=s1.s_order_no and qty_ordered*product_rate>15000 group by client_no
  33.select s.s_order_no,s.s_order_date,sum(so.qty_ordered*so.product_rate)"Order Billed",sum(so.qty_disp*so.product_rate) "Total Amount" from sales_orders, sales_order_details so where so.s_order_no=s.s_order_no and s.billed_yn='Y' and to_char(s_order_date,'mon')='jan' group by s.s_order_no,s.s_order_date;
  34.select p.description||' Worth Rs'||sum(d.qty_disp*d.product_rate) from product_master p, sales_order_details d
where p.product_no=d.product_no group by p.description; 
  35.select p.description||' Worth Rs'||sum(d.qty_disp*d.product_rate)||' was ordered in the month of'||to_char(s_order_date,'month')"Description Total amount Month" from product_master p, sales_order_details d,sales_orders where p.product_no=d.product_no and s.s_order_no=d.s_order_no group by p.description,s.s_order_date;

4.) Nested Queries :

  36.select product_no ,description from product_master_2 where product_nonot in (select product_no from sales_order_details);
  37.select name,city,pincode from client_master_2 where client_no in (selectclient_no from sales_order_2 where order_no = 'O1901' );
  38.select client_no,name from client_master where client_no in(select client_no from sales_order 
where to_char(s_order_date,'mon,yy')<'may,96');
  39.select client_no,name from client_master where client_no in (select client_no from sales_order where s_order_no in (select s_order_no from sales_order_details where product_no in(select product_no from product_master where description='1.44 Drive')));
  40.select name from client_master where client_no in(select client_no from sales_order where s_order_no in (select s_order_no from sales_order_details where (qty_ordered*product_rate)>=10000));

5.) Queries using Date:

  41.SELECT ORDER_NO, TO_CHAR(ORDERDATE,‘DAY’) “ORDER DAY” FROM SALES_ORDER;
  42.SELECT ORDER_NO, TO_CHAR(DELIVDATE,‘MONTH’) “MONTH”, DELIVDATE FROM SALES_ORDER;
  43.SELECT TO_CHAR(ORDERDATE,‘DD-MONTH-YY’) “ORDERDATE” FROM SALES_ORDER;
  44.SELECT SYSDATE + 15 FROM DUAL;
  45.select datediff(curdate(), Dely_Date) as days_diff from sales_order;

6. ) Table Updations:

  46.update sales_order set S_Order_Date = '24-JUL-1996' where Client_No = 'C00001';select * from sales_order where Client_No = 'C00001';
  47.update product_master set Sell_Price = '1150.00' where Product_No = 'P07965';
  48.delete from sales_order where S_Order_No = 'O19001';
  49.delete from sales_order where Dely_Date < '10-July-96';
  50.update client_master set City = 'Bombay' where Client_No='C00005';
  51.update sales_order set Dely_Date = '16-AUG-1996' where S_Order_No = 'O10008';
  52.update client_master set Bal_Due = 1000 where Client_No='C00001';
  53.update product_master set Cost_Price = 950 where Product_No = 'P07865';


Hands-on Exercise

1.)Column 1 - inserted Successfully
   Column 2 - ORA-12899: value too large for column "SCOTT"."CHALLAN_DETAILS"."CHALLAN_NO"(actual: 7, maximum: 6)
   Column 3 - ORA-02291: integrity constraint (SCOTT.SYS_C008311) violated - parent key not found.

2.)No product Master Can't Drop
   ERROR at line 1:ORA-02449: unique/primary keys in table referenced by foreign keys.

3.)challan_details -Table Dropped
   challan_header - Table Dropped
   Product_Master - ERROR at line 1:ORA-02449: unique/primary keys in table referenced by foreign keys
4.)Until column present in the child table parent table cannot be delete.Then we can't violate the rules.
   
