/* ORIGINAL DATABASE ALL WHOLE LOT EXECUTES TOGETHER......................................*/
-- TODO Create check constraints on tables, columns


CREATE TABLE CUSTOMER(
    customer_id 	       NUMBER(11) NOT NULL,
    first_name 		       VARCHAR(50) NOT NULL,
    last_name 		       VARCHAR(50) NOT NULL,
	phone 		  	       VARCHAR(20) NOT NULL,
	card_type 		       VARCHAR(20) NOT NULL,
	card_number 	       VARCHAR(20) NOT NULL,
	card_id_number 	       VARCHAR(20) NOT NULL,
	valid_date 		       VARCHAR(20) NOT NULL,
	CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);

CREATE TABLE SELLER (
    seller_id 		  	NUMBER(11) NOT NULL,
    customer_id 	    NUMBER(11) NOT NULL,
    first_name 		    VARCHAR(50) NOT NULL,
    last_name 		    VARCHAR(50) NOT NULL,
    email 	            VARCHAR(50) NOT NULL,
	username 		    VARCHAR(50) NOT NULL,
	password 		    VARCHAR(50) NOT NULL,
	CONSTRAINT pk_user              PRIMARY KEY (seller_id),
	CONSTRAINT fk_seller_customer   FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id) ON DELETE CASCADE
);

CREATE TABLE ADDRESS(
     address_id 	            NUMBER(11)  NOT NULL,
     customer_id 	            NUMBER(11) NOT NULL,
     address_line1 	            VARCHAR(50) NOT NULL,
     address_line2 	            VARCHAR(50) NOT NULL,
     city 		  	            VARCHAR(20) NOT NULL,
     county 		            VARCHAR(20) NOT NULL,
     country 		            VARCHAR(20) NOT NULL,
     zip 		  	            VARCHAR(20) NOT NULL,
     CONSTRAINT pk_address          PRIMARY KEY (address_id),
     CONSTRAINT fk_address_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id) ON DELETE CASCADE
);

							 
CREATE TABLE LOCAL_ORDER (
    order_id 					NUMBER(11) NOT NULL,
    customer_id 			    NUMBER(11) NOT NULL,
    order_date  				DATE,
    CONSTRAINT pk_order             PRIMARY KEY (order_id),
    CONSTRAINT fk_order_customer    FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id) ON DELETE CASCADE
);	


CREATE TABLE SUPPLIER(
    supplier_id 		     NUMBER(11) NOT NULL,
    supplier_name			 VARCHAR(40) NOT NULL,
	supplier_address 		 VARCHAR(30) NOT NULL,
	supplier_phone 		     VARCHAR(20) NOT NULL,
	CONSTRAINT pk_supplier   PRIMARY KEY (supplier_id)
);

						 
CREATE TABLE PRODUCT(
    product_id 				      NUMBER(11) NOT NULL,
	supplier_id 				  NUMBER(11) NOT NULL,
	product_code				  VARCHAR(30)NOT NULL,
    product_name			      VARCHAR(30)NOT NULL,
    product_price 			      NUMBER(7,2) NOT NULL,
    CONSTRAINT pk_product         PRIMARY KEY (product_id),
	CONSTRAINT fk_prod_supplier   FOREIGN KEY (supplier_id) REFERENCES SUPPLIER (supplier_id) ON DELETE CASCADE
);


CREATE TABLE ORDER_ITEM(
    order_id 		              NUMBER(11) NOT NULL,
    product_id 		              NUMBER(11) NOT NULL,
    CONSTRAINT pk_order_item      PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_item_order      FOREIGN KEY (order_id)   REFERENCES LOCAL_ORDER (order_id)  ON DELETE CASCADE,
	CONSTRAINT fk_item_product    FOREIGN KEY (product_id) REFERENCES PRODUCT (product_id)    ON DELETE CASCADE
);

