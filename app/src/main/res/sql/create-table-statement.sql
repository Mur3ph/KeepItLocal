/* ORIGINAL DATABASE ALL WHOLE LOT EXECUTES TOGETHER......................................*/
-- TODO Create check constraints on tables, columns

CREATE TABLE Users(
    user_id 	           NUMBER(11) NOT NULL,
    first_name 		       VARCHAR(50) NOT NULL,
    last_name 		       VARCHAR(50) NOT NULL,
	phone 		  	       VARCHAR(20) NOT NULL,
	card_type 		       VARCHAR(20) NOT NULL,
	card_number 	       VARCHAR(20) NOT NULL,
	card_id_number 	       VARCHAR(20) NOT NULL,
	valid_date 		       VARCHAR(20) NOT NULL,
	CONSTRAINT pk_user     PRIMARY KEY (user_id)
);


CREATE TABLE Buyer(
  buyer_id                          INTEGER        NOT NULL,
  user_id 	                        NUMBER(11)     NOT NULL,
  first_name 		                VARCHAR(50)    NOT NULL,
  last_name 		                VARCHAR(50)    NOT NULL,
  email 	                        VARCHAR(50)    NOT NULL,
  username 		                    VARCHAR(50)    NOT NULL,
  password 		                    VARCHAR(50)    NOT NULL,
  min_budget                        NUMBER(10, 2)  NOT NULL,
  max_budget                        NUMBER(10, 2)  NOT NULL,
  CONSTRAINT pk_buyer               PRIMARY KEY (buyer_id),
  CONSTRAINT fk_buyer_user          FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE,
  CONSTRAINT ck_max_min_budget      CHECK ( min_budget <= max_budget )
);


CREATE TABLE Seller (
    seller_id 		  	            NUMBER(11) NOT NULL,
    user_id 	                    NUMBER(11) NOT NULL,
    first_name 		                VARCHAR(50) NOT NULL,
    last_name 		                VARCHAR(50) NOT NULL,
    email 	                        VARCHAR(50) NOT NULL,
	username 		                VARCHAR(50) NOT NULL,
	password 		                VARCHAR(50) NOT NULL,
	CONSTRAINT pk_seller            PRIMARY KEY (seller_id),
	CONSTRAINT fk_seller_user       FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE
);

CREATE TABLE Address(
     address_id 	                NUMBER(11)  NOT NULL,
     user_id 	                    NUMBER(11) NOT NULL,
     address_line1 	                VARCHAR(50) NOT NULL,
     address_line2 	                VARCHAR(50) NOT NULL,
     city 		  	                VARCHAR(20) NOT NULL,
     county 		                VARCHAR(20) NOT NULL,
     country 		                VARCHAR(20) NOT NULL,
     zip 		  	                VARCHAR(20) NOT NULL,
     CONSTRAINT pk_address          PRIMARY KEY (address_id),
     CONSTRAINT fk_address_user     FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE
);


CREATE TABLE Local_Order (
    order_id 					    NUMBER(11) NOT NULL,
    user_id 			            NUMBER(11) NOT NULL,
    order_date  				    DATE,
    CONSTRAINT pk_order             PRIMARY KEY (order_id),
    CONSTRAINT fk_order_user        FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE
);


CREATE TABLE Supplier(
    supplier_id 		     NUMBER(11)  NOT NULL,
    supplier_name			 VARCHAR(40) NOT NULL,
	supplier_address 		 VARCHAR(30) NOT NULL,
	supplier_phone 		     VARCHAR(20) NOT NULL,
	CONSTRAINT pk_supplier   PRIMARY KEY (supplier_id)
);


CREATE TABLE Product(
    product_id 				      NUMBER(11)  NOT NULL,
	supplier_id 				  NUMBER(11)  NOT NULL,
	product_code				  VARCHAR(30) NOT NULL,
    product_name			      VARCHAR(30) NOT NULL,
    product_price 			      NUMBER(7,2) NOT NULL,
    CONSTRAINT pk_product         PRIMARY KEY (product_id),
	CONSTRAINT fk_prod_supplier   FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id) ON DELETE CASCADE
);


CREATE TABLE Image
(
  image_id                  INTEGER         NOT NULL,
  product_id                NUMBER(11)      NOT NULL,
  image_name                VARCHAR2(30),
  mime_type                 VARCHAR2(30),
  image_content             BLOB,
  CONSTRAINT pk_image       PRIMARY KEY (image_id),
  CONSTRAINT fk_image_room  FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE
);


CREATE TABLE Order_Item(
    order_id 		              NUMBER(11) NOT NULL,
    product_id 		              NUMBER(11) NOT NULL,
    CONSTRAINT pk_order_item      PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_item_order      FOREIGN KEY (order_id)   REFERENCES Local_Order (order_id)  ON DELETE CASCADE,
	CONSTRAINT fk_item_product    FOREIGN KEY (product_id) REFERENCES Product (product_id)    ON DELETE CASCADE
);

