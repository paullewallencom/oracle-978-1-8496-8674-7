-- Create an orders table with different integrity constraints included
CREATE TABLE orders (
order_no	NUMBER	PRIMARY KEY,
order_date	DATE		NOT NULL,
description	VARCHAR2(30)	UNIQUE,
loc		VARCHAR2(30)	CHECK (loc IN (‘LONDON’, ‘DUBAI’, ‘DELHI’)));


-- Create order details table
CREATE TABLE order_details (
order_no	NUMBER	REFERENCES orders(order_no),
line_no		NUMBER,
item_no	NUMBER,
quantity	NUMBER);



-- create composite primary key 
ALTER TABLE order_details ADD CONSTRAINT ord_det_pk PRIMARY KEY (order_no, line_no);
