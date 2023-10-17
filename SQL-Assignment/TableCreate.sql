drop table Challan_details;
drop table Challan_Header;
drop table sales_order_details;
drop table sales_order;
drop table salesman_master;
drop table product_master;
drop table Client_master;

create table Client_master
(client_no varchar2(6) primary key check(client_no like 'C%'),
name varchar2(20) not null,
address1 varchar2(30),
address2 varchar2(30),
city varchar2(15),
state varchar2(15),
pincode number(6),
bal_due number(10,2))
/
create table product_master
(product_no varchar2(6) primary key check(product_no like 'P%'),
description varchar2(50) not null,
profit_percent number(3,2) not null,
unit_measure varchar2(10) not null,
qty_on_hand number(3) not null,
record_lvl number(8) not null,
sell_price number(8,2)not null check(sell_price not in 0),
cost_price number(8,2)not null check(cost_price not in 0)
)
/
create table salesman_master
(salesman_no varchar2(6) primary key check(salesman_no like 'S%'),
salesman_name varchar2(20) not null,
Address1 varchar2(30) not null,
Address2 varchar2(30),
city varchar2(20) ,
pincode varchar2(6),
state varchar2(20),
sal_amt number(8,2) not null check(sal_amt not in 0),
tgt_to_get number(6,2) not null check(tgt_to_get not in 0),
ytd_sales number(6,2) not null,
remarks varchar2(60)
)
/
create table sales_order
(s_order_no varchar2(6) primary key check(s_order_no like 'O%'),
s_order_date date,
client_no varchar2(6) references client_master(client_no),
dely_addr varchar2(25),
salesman_no varchar2(6) references salesman_master(salesman_no),
dely_type char(1) default 'F' check(dely_type in ('P','F')),
billed_yn char(1) default 'N' check(billed_yn in ('Y','N')),
dely_date date,
order_status varchar(10) check(order_status in('In process','Fulfilled','BackOrder','Canceled')),
constraint check_dely_date check(dely_date >=s_order_date)
)
/
create table sales_order_details
(
s_order_no varchar2(6) references sales_order(s_order_no),
product_no varchar2(6) references product_master(product_no),
qty_ordered number(8),
qty_disp number(8),
product_rate number(10,2)                                                                                                        
)
/
create table Challan_Header
(
challan_no varchar2(6) primary key check(challan_no like 'CH%'),
s_order_no varchar2(6) references sales_order(s_order_no),
challan_date date not null,
billed_yn char(1) default 'N' check(billed_yn in ('Y','N'))                                                                                                       
)
/
create table Challan_details
(
challan_no varchar2(6) references challan_header(challan_no),
product_no varchar2(6) references product_master(product_no),
qty_disp number(4,2)                                                                                                     
)
/


