CREATE TABLE Goods3
	(goods_id CHAR(4) NOT NULL,
	goods_name VARCHAR(100) NOT NULL, 
	goods_classify VARCHAR(32) NOT NULL, 
	sell_price INTEGER,
	buy_price INTEGER,
	register_date DATE, 
PRIMARY KEY (goods_id));

BEGIN TRANSACTION;
	INSERT INTO Goods3 VALUES ('0001', 'tshirt', 'clothes', 17, 5, '2016-09-20'); 
	INSERT INTO Goods3 VALUES ('0002', 'stapler', 'office', 25, 18, '2016-09-11'); 
	INSERT INTO Goods3 VALUES ('0003', 'dress_shirt', 'clothes', 33, 28, NULL); 
	INSERT INTO Goods3 VALUES ('0009', 'gloves', 'clothes', 80, 50, NULL); 
	INSERT INTO Goods3 VALUES ('0010', 'pot', 'kitchen', 20, 17, '2016-09-20');
COMMIT;


SELECT * 
	FROM Goods UNION 
		SELECT * 
			FROM Goods3; 
	
SELECT * 
	FROM Goods UNION ALL 
		SELECT * 
			FROM Goods3; 
	
SELECT *	
	FROM Goods INTERSECT 
		SELECT * 
			FROM Goods3; 
	
SELECT * 
	FROM Goods EXCEPT 	
		SELECT * 
			FROM Goods3; 
	
SELECT * 
	FROM Goods3 EXCEPT 
		SELECT * 
			FROM Goods;

