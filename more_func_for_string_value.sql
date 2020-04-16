CREATE TABLE SampleLike
	(strcol VARCHAR(6) NOT NULL,
PRIMARY KEY(strcol)); 

BEGIN TRANSACTION;
INSERT INTO SampleLike (strcol) VALUES ('abcddd'); 
INSERT INTO SampleLike (strcol) VALUES ('dddabc'); 
INSERT INTO SampleLike (strcol) VALUES ('abcddc'); 
INSERT INTO SampleLike (strcol) VALUES ('abcdd'); 
INSERT INTO SampleLike (strcol) VALUES ('ddabc'); 
INSERT INTO SampleLike (strcol) VALUES ('abddc'); 
INSERT INTO SampleLike (strcol) VALUES ('abdddc');
COMMIT;

SELECT * 
FROM SampleLike 
WHERE strcol='ddd'; 

SELECT * 
FROM SampleLike 
WHERE strcol LIKE 'ddd%'; 

SELECT * 
FROM SampleLike 
WHERE strcol LIKE '%ddd'; 

SELECT * 
FROM SampleLike 
WHERE strcol LIKE '%ddd%';