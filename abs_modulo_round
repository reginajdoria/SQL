CREATE TABLE SampleMath 
	(m DECIMAL (10,3),
	n INTEGER,
	p INTEGER); 
	
BEGIN TRANSACTION;
	INSERT INTO SampleMath(m, n, p) VALUES (500,0,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (-100,0,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (NULL,NULL,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (NULL,7,3);
	INSERT INTO SampleMath(m, n, p) VALUES (NULL,5,2); 
	INSERT INTO SampleMath(m, n, p) VALUES (NULL,4,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (8,NULL,3); 
	INSERT INTO SampleMath(m, n, p) VALUES (2.27,1,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (5.555,2,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (NULL,1,NULL); 
	INSERT INTO SampleMath(m, n, p) VALUES (8.76,NULL,NULL);
COMMIT;


SELECT m, ABS(m) AS 'abs_m' 
	FROM SampleMath;

SELECT n, p, n%p AS 'n%p' 
	FROM SampleMath;

SELECT m, n, ROUND(m,n) AS 'round' 
	FROM SampleMath;

SELECT m, n, ROUND(m,2) AS 'round' 
	FROM SampleMath;
