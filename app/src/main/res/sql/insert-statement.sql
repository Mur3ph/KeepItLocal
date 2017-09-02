-- Insert data:
-- TODO 1). Have to change Customer, Product, and Seller/User tables, and have to create inserts for Address table

DROP TABLE Order_Item;
DROP TABLE Image;
DROP TABLE Product;
DROP TABLE Supplier;
DROP TABLE Local_Order;
DROP TABLE Address;
DROP TABLE Seller;
DROP TABLE Buyer;
DROP TABLE Users;

INSERT INTO Users VALUES (1, 'Paul', 'Murphy', '087 926 2302', 'Laser', UNHEX(MD5('1111-2222-3333-4444')), UNHEX(MD5('192')), '10/03/2012');
INSERT INTO Buyer VALUES (1, 1, 'Paul', 'Murphy', 'buyer_email@gmail.com', 'username', 'password', 100.00);
INSERT INTO Seller VALUES (1, 1, 'Paul', 'Murphy', 'seller_email@gmail.com', 'username', 'password');

INSERT INTO Address VALUES (1, 1, '1010 Main Street line1', 'NA line2', 'Duleek city', 'Meath', 'Ireland', 'EIRE zip');

INSERT INTO Local_Order VALUES (1, 1, '2012-01-12');

INSERT INTO Supplier VALUES ( 1, 'supplier name', 'supplier address', '(048) 1234557');

INSERT INTO Product VALUES ( 1, 1, 'product code', 'product name', 9.99);

INSERT INTO Image VALUES (1, 1, 'image name', 'mime_type', 'BLOB');

INSERT INTO Order_Item VALUES (1, 1);
                                                                                                                                                                                            INSER