insert into client_master(client_no,name,city,state,pincode,bal_due) values('C00001','Ivan Bayross','Bombay','Maharashtra',400054,15000)
/
insert into client_master(client_no,name,city,state,pincode,bal_due) values('C00002','Vandana Saitwal','Madras','Tamil Nadu',400054,0)
/
insert into client_master(client_no,name,city,state,pincode,bal_due) values('C00003','Pramada Jaguste','Bombay','Maharashtra',400054,5000)
/
insert into client_master(client_no,name,city,state,pincode,bal_due) values('C00004','Basu Navindgi','Bombay','Maharashtra',400054,0)
/
insert into client_master(client_no,name,city,state,pincode,bal_due) values('C00005','Ravi Sreedharan','Delhi','Delhi',400054,2000)
/
insert into client_master(client_no,name,city,state,pincode,bal_due) values('C00006','Rukmini','Bombay','Maharashtra',400054,0)
/


insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P00001','1.44 Floppies',5,'Piece',100,20,525,500)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P03453','Monitors',6,'Piece',10,3,12000,11280)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P06734','Mouse
',5,'Piece',20,5,1050,1000)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P07865','1.22 Floppies',5,'Piece',100,20,525,500)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P07868','Keyboards',2,'Piece',10,3,3150,3050)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P07885','CD Drive',2.5,'Piece',10,3,5250,5100)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P07965','540 HDD',4,'Piece',10,3,8400,8000)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P07975','1.44 Drive',5,'Piece',10,3,1050,1000)
/
insert into product_master(product_no,description,profit_percent,unit_measure,qty_on_hand,record_lvl,sell_price,cost_price)values('P08865','1.22 Drive',5,'Piece',2,3,1050,1000)
/


insert into salesman_master 
(salesman_no,salesman_name,address1,address2,city,pincode,state,sal_amt,tgt_to_get,ytd_sales,remarks)values
('S00001','Kiran','A/14','Worli','Bombay','400002','MAH',3000,100,50,'GOOD')
/
insert into salesman_master 
(salesman_no,salesman_name,address1,address2,city,pincode,state,sal_amt,tgt_to_get,ytd_sales,remarks)values
('S00002','Manish','65','Nariman','Bombay','400001','MAH',3000,200,100,'GOOD')
/
insert into salesman_master 
(salesman_no,salesman_name,address1,address2,city,pincode,state,sal_amt,tgt_to_get,ytd_sales,remarks)values
('S00003','Ravi','P-7','Bandra','Bombay','400032','MAH',3000,200,100,'GOOD')
/
insert into salesman_master 
(salesman_no,salesman_name,address1,address2,city,pincode,state,sal_amt,tgt_to_get,ytd_sales,remarks)values
('S00004','Ashish','A/5','Juhu','Bombay','400042','MAH',3500,200,150,'GOOD')
/

insert into sales_order 
(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values
('O19001','12-jan-1996','C00001','F','N','S00001','20-jan-1996','In process')
/
insert into sales_order 
(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values
('O19002','25-jan-1996','C00002','P','N','S00002','27-jan-1996','Canceled')
/
insert into sales_order 
(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values
('O46865','18-feb-1996','C00003','F','Y','S00003','20-feb-1996','Fulfilled')
/
insert into sales_order 
(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values
('O19003','03-apr-1996','C00001','F','Y','S00001','07-apr-1996','Fulfilled')
/
insert into sales_order 
(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values
('O46866','20-may-1996','C00004','P','N','S00002','22-may-1996','Canceled')
/
insert into sales_order 
(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values
('O10008','24-may-1996','C00005','F','N','S00004','26-may-1996','In process')
/

insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O19001','P00001',4,4,525)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O19001','P07965',2,1,8400)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O19001','P07885',2,1,5250)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O19002','P00001',10,0,525)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O46865','P07868',3,3,3150)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O46865','P07885',3,1,5250)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O46865','P00001',10,10,525)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O46865','P03453',4,4,1050)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O19003','P03453',2,2,1050)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O19003','P06734',1,1,1200)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O46866','P07965',1,0,8400)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O46866','P07975',1,0,1050)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O10008','P00001',10,5,525)
/
insert into sales_order_details (s_order_no,product_no,qty_ordered,qty_disp,product_rate)values('O10008','P07975',5,3,1050)
/

insert into Challan_Header(challan_no,s_order_no,challan_date,billed_yn)values('CH9001','O19001','12-dec-1995','Y')
/
insert into Challan_Header(challan_no,s_order_no,challan_date,billed_yn)values('CH6865','O46865','12-nov-1995','Y')
/
insert into Challan_Header(challan_no,s_order_no,challan_date,billed_yn)values('CH3965','O10008','12-oct-1995','Y')
/

insert into Challan_details (challan_no,product_no,qty_disp)values('CH9001','P00001',4)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH9001','P07965',1)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH9001','P07885',1)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH6865','P07868',3)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH6865','P03453',4)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH6865','P00001',10)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH3965','P00001',5)
/
insert into Challan_details (challan_no,product_no,qty_disp)values('CH3965','P07975',2)
/