CREATE TABLE store
	(store_id CHAR(4) NOT NULL,
	store_name VARCHAR(200) NOT NULL, 
	goods_id CHAR(4) NOT NULL,
	num INTEGER NOT NULL,
PRIMARY KEY (store_id, goods_id));


BEGIN TRANSACTION;
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000A', 'Seattle', '0001', 30);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000A', 'Seattle', '0002', 50);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000A', 'Seattle', '0003', 15);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000B', 'Tacoma', '0002', 30);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000B', 'Tacoma', '0003', 120);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000B', 'Tacoma', '0004', 20);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000B', 'Tacoma', '0006', 10);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000B', 'Tacoma', '0007', 40);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000C', 'Bothel', '0003', 20);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000C', 'Bothel', '0004', 50);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000C', 'Bothel', '0006', 90);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000C', 'Bothel', '0007', 70);
	INSERT INTO store (store_id, store_name, goods_id, num)
		VALUES('000D', 'ParkLand', '0001', 100);
COMMIT;

CREATE TABLE stock 
	(storage_id CHAR(4) NOT NULL,
	goods_id CHAR(4) NOT NULL, 
	stock_num INTEGER NOT NULL, 
PRIMARY KEY (storage_id, goods_id));

BEGIN TRANSACTION;
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0001', 0); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0002', 120);	
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0003', 200); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0004', 3); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0005', 0); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0006', 99); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0007', 999); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S001', '0008', 10); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0001', 3); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0002', 60); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0003', 80); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0004', 74); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0005', 2); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0006', 40); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0007', 32); 
	INSERT INTO stock(storage_id, goods_id, stock_num) VALUES('S002', '0008', 123);
COMMIT;

SELECT S.store_id, S.store_name, S.goods_id, G.goods_name, G.sell_price, G.buy_price 
	FROM store AS S INNER JOIN goods AS G
ON S.goods_id=G.goods_id;

SELECT S.store_id, S.store_name, S.goods_id, G.goods_name, G.sell_price, G.buy_price 
	FROM store AS S INNER JOIN goods AS G
	ON S.goods_id=G.goods_id
WHERE S.store_id='000A';

SELECT S.store_id, S.store_name, S.goods_id, G.goods_name, G.sell_price, G.buy_price
	FROM store AS S LEFT OUTER JOIN goods AS G
ON S.goods_id=G.goods_id;

SELECT S.store_id, S.store_name, S.goods_id, G.goods_name, G.sell_price, G.buy_price 
	FROM store AS S RIGHT OUTER JOIN goods AS G
	ON S.goods_id=G.goods_id
ORDER BY store_id;

SELECT S.store_id, S.store_name, S.goods_id,
	G.goods_name, G.sell_price, G.buy_price,
	ST.storage_id, ST.stock_num
FROM store AS S 
	INNER JOIN goods AS G ON S.goods_id=G.goods_id
	INNER JOIN stock AS ST ON S.goods_id=ST.goods_id;
