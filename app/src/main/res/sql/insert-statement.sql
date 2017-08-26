-- Insert data

INSERT INTO CUSTOMER VALUES (null, 'Paul', 'Murphy', '1010 Main Street', 'Duleek', 'N/A', 'Meath', 'Ireland', 'EIRE', '1900-282820', 'Laser', UNHEX(MD5('1111-2222-3333-4444')), UNHEX(MD5('192')), '10/03/2012');
INSERT INTO CUSTOMER VALUES (null, 'Joe', 'Bloggs', '1111 Main Street', 'Duleek', 'N/A', 'Louth', 'Ireland', 'EIRE', '1800-282820', 'Master', UNHEX(MD5('2222-2222-3333-4444')), UNHEX(MD5('193')), '11/03/2015');
INSERT INTO CUSTOMER VALUES (null, 'John', 'Doe', '0101 Main Street', 'Duleek', 'N/A', 'Cork', 'Ireland', 'EIRE', '1700-282820', 'Credit', UNHEX(MD5('3333-2222-3333-4444')), UNHEX(MD5('194')), '19/03/2014');
INSERT INTO CUSTOMER VALUES (null, 'Ringo', 'Murphy', '1010 Main Street', 'Duleek', 'N/A', 'Meath', 'Ireland', 'EIRE', '1900-282820', 'Laser', UNHEX(MD5('1111-2222-3333-4444')), UNHEX(MD5('192')), '10/03/2012');
INSERT INTO CUSTOMER VALUES (null, 'Tom', 'Bloggs', '1111 Main Street', 'Duleek', 'N/A', 'Meath', 'Ireland', 'EIRE', '1800-282820', 'Master', UNHEX(MD5('2222-2222-3333-4444')), UNHEX(MD5('193')), '11/03/2015');
INSERT INTO CUSTOMER VALUES (null, 'Tim', 'Doe', '0101 Main Street', 'Duleek', 'N/A', 'Tipperary', 'Ireland', 'EIRE', '1700-282820', 'Credit', UNHEX(MD5('3333-2222-3333-4444')), UNHEX(MD5('194')), '19/03/2014');
INSERT INTO CUSTOMER VALUES (null, 'Pete', 'Murphy', '1010 Main Street', 'Duleek', 'N/A', 'Wexford', 'Ireland', 'EIRE', '1900-282820', 'Laser', UNHEX(MD5('1111-2222-3333-4444')), UNHEX(MD5('192')), '10/03/2012');
INSERT INTO CUSTOMER VALUES (null, 'Dan', 'Bloggs', '1111 Main Street', 'Duleek', 'N/A', 'Meath', 'Ireland', 'EIRE', '1800-282820', 'Master', UNHEX(MD5('2222-2222-3333-4444')), UNHEX(MD5('193')), '11/03/2015');
INSERT INTO CUSTOMER VALUES (null, 'Ivan', 'Doe', '0101 Main Street', 'Duleek', 'N/A', 'Donegal', 'Ireland', 'EIRE', '1700-282820', 'Credit', UNHEX(MD5('3333-2222-3333-4444')), UNHEX(MD5('194')), '19/03/2014');

INSERT INTO THEORDER VALUES (null, 1, '2012-01-12');
INSERT INTO THEORDER VALUES (null, 2, '2012-02-13');
INSERT INTO THEORDER VALUES (null, 3, '2012-12-12');
INSERT INTO THEORDER VALUES (null, 4, '2012-01-12');
INSERT INTO THEORDER VALUES (null, 5, '2012-02-13');
INSERT INTO THEORDER VALUES (null, 6, '2012-12-12');
INSERT INTO THEORDER VALUES (null, 7, '2012-01-12');
INSERT INTO THEORDER VALUES (null, 8, '2012-02-13');
INSERT INTO THEORDER VALUES (null, 9, '2012-12-12');

INSERT INTO PRODUCT VALUES ( null, 1, 'images/cover1.jpg', '1010A', 'Unite', 'Indie/Rock', 'Track 1 is Borneo by Firewater. Very neat shakin hips striding down the road drums a playin song. In your face great pseudo political lyrics and chorus. Love it. Usual Suspects by Ha Ha Tonka up next. Country Rock that rocks w/repeated song title chorus, cool band. Very nice. Harlem River Blues by Justin Townes Earle is track 3. This track was on the Bloodshot 2010 sampler, still sounds great, rock a billy-ish song bopping along. Next song is Intertwined by Maggie Bjorklund w/Mark Lanegan. Weird combination of 2 voices that do not seem to complement each other. Plodding bass behind voices. Eddie Spaghetti with Sundowner is next. Eddie races through speedy country number. I aint dancin this fast for any gurl.', 9.99);
INSERT INTO PRODUCT VALUES ( null, 1, 'images/cover2.jpg', '1011B', 'Point of Know Return', 'Indie/Rock', 'Track 1 is Borneo by Firewater. Very neat shakin hips striding down the road drums a playin song. In your face great pseudo political lyrics and chorus. Love it. Usual Suspects by Ha Ha Tonka up next. Country Rock that rocks w/repeated song title chorus, cool band. Very nice. Harlem River Blues by Justin Townes Earle is track 3. This track was on the Bloodshot 2010 sampler, still sounds great, rock a billy-ish song bopping along. Next song is Intertwined by Maggie Bjorklund w/Mark Lanegan. Weird combination of 2 voices that do not seem to complement each other. Plodding bass behind voices. Eddie Spaghetti with Sundowner is next. Eddie races through speedy country number. I aint dancin this fast for any gurl.', 14.99);
INSERT INTO PRODUCT VALUES ( null, 1, 'images/cover3.jpeg', '1012C', 'Shock n Yall', 'Indie/Rock', 'Track 1 is Borneo by Firewater. Very neat shakin hips striding down the road drums a playin song. In your face great pseudo political lyrics and chorus. Love it. Usual Suspects by Ha Ha Tonka up next. Country Rock that rocks w/repeated song title chorus, cool band. Very nice. Harlem River Blues by Justin Townes Earle is track 3. This track was on the Bloodshot 2010 sampler, still sounds great, rock a billy-ish song bopping along. Next song is Intertwined by Maggie Bjorklund w/Mark Lanegan. Weird combination of 2 voices that do not seem to complement each other. Plodding bass behind voices. Eddie Spaghetti with Sundowner is next. Eddie races through speedy country number. I aint dancin this fast for any gurl.', 5.99);
INSERT INTO PRODUCT VALUES ( null, 1, 'images/cover4.jpg', '1013D', 'Tutti Frutti', 'Indie/Rock', 'Track 1 is Borneo by Firewater. Very neat shakin hips striding down the road drums a playin song. In your face great pseudo political lyrics and chorus. Love it. Usual Suspects by Ha Ha Tonka up next. Country Rock that rocks w/repeated song title chorus, cool band. Very nice. Harlem River Blues by Justin Townes Earle is track 3. This track was on the Bloodshot 2010 sampler, still sounds great, rock a billy-ish song bopping along. Next song is Intertwined by Maggie Bjorklund w/Mark Lanegan. Weird combination of 2 voices that do not seem to complement each other. Plodding bass behind voices. Eddie Spaghetti with Sundowner is next. Eddie races through speedy country number. I aint dancin this fast for any gurl.', 19.99);
INSERT INTO PRODUCT VALUES ( null, 1, 'images/cover5.jpg', '1014E', 'Voice', 'Indie/Rock', 'Track 1 is Borneo by Firewater. Very neat shakin hips striding down the road drums a playin song. In your face great pseudo political lyrics and chorus. Love it. Usual Suspects by Ha Ha Tonka up next. Country Rock that rocks w/repeated song title chorus, cool band. Very nice. Harlem River Blues by Justin Townes Earle is track 3. This track was on the Bloodshot 2010 sampler, still sounds great, rock a billy-ish song bopping along. Next song is Intertwined by Maggie Bjorklund w/Mark Lanegan. Weird combination of 2 voices that do not seem to complement each other. Plodding bass behind voices. Eddie Spaghetti with Sundowner is next. Eddie races through speedy country number. I aint dancin this fast for any gurl.', 18.99);

INSERT INTO ORDERITEM VALUES (1, 1);
INSERT INTO ORDERITEM VALUES (2, 3);
INSERT INTO ORDERITEM VALUES (3, 1);
INSERT INTO ORDERITEM VALUES (4, 5);
INSERT INTO ORDERITEM VALUES (5, 3);
INSERT INTO ORDERITEM VALUES (6, 4);
INSERT INTO ORDERITEM VALUES (7, 4);
INSERT INTO ORDERITEM VALUES (8, 2);
INSERT INTO ORDERITEM VALUES (9, 3);

INSERT INTO THEUSER VALUES (null, 'Paul', 'Murphy', 'mur3ph@gmail.com', 'pmurp09', UNHEX(MD5('p9823874m')));
INSERT INTO THEUSER VALUES (null, 'Joe', 'Bloggs', 'bloggsey@hotmail.com', 'jblog', UNHEX(MD5('password2')));
INSERT INTO THEUSER VALUES (null, 'John', 'Doe', 'jdoe@themorgue.com', 'jdoe', UNHEX(MD5('password3')));

INSERT INTO SUPPLIER VALUES ( null,'The Boyz From The County Hell', '20 High St, Dundalk', '(048)12345');
INSERT INTO SUPPLIER VALUES ( null,'The Boyz From The County Hell', '20 High St, Dundalk', '(048)12345');
INSERT INTO SUPPLIER VALUES ( null,'The Boyz From The County Hell', '20 High St, Dundalk', '(048)12345');