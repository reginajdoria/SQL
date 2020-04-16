CREATE TABLE SampleStr 
	(str1 VARCHAR(40),
	str2 VARCHAR(40),
	str3 VARCHAR(40));
	 

BEGIN TRANSACTION;
	INSERT INTO SampleStr (str1, str2, str3) VALUES ('@!#$%', NULL, NULL); 
	INSERT INTO SampleStr (str1, str2, str3) VALUES ('ABC', NULL, NULL); 
	INSERT INTO SampleStr (str1, str2, str3) VALUES ('aBC', NULL, NULL); 
	INSERT INTO SampleStr (str1, str2, str3) VALUES ('I', 'am', 'a girl'); 
	INSERT INTO SampleStr (str1, str2, str3) VALUES ('I', ' am', ' a girl');
COMMIT;


SELECT str1, 
	str2,
	str3, 
	str1+str2+str3 
		AS str_concat 
FROM SampleStr;


SELECT str1,
	 LOWER(str1) AS lower_str1 
FROM SampleStr; 


SELECT str1, 
	UPPER(str1) AS lower_str1 
FROM SampleStr;


SELECT str1, 
	LEN(str1) AS len_str 
FROM SampleStr;

SELECT str1, 
	SUBSTRING(str1, 3, 2) AS sub_Str 
FROM SampleStr;

SELECT CAST ('0001' AS INTEGER) AS int_col;

SELECT CAST (1 AS DECIMAL(3,2)) AS dec_col; 

SELECT CAST ('2017-03-02' AS DATE) AS 'date';


SELECT CAST(CURRENT_TIMESTAMP AS DATE) AS cur_date; 

SELECT CAST(CURRENT_TIMESTAMP AS TIME) AS cur_time; 

SELECT CURRENT_TIMESTAMP;


SELECT CURRENT_TIMESTAMP,
	DATEPART(YEAR, CURRENT_TIMESTAMP) AS 'year', 
	DATEPART(MONTH, CURRENT_TIMESTAMP) AS 'month', 
	DATEPART(DAY, CURRENT_TIMESTAMP) AS 'day', 
	DATEPART(HOUR, CURRENT_TIMESTAMP) AS 'hour', 
	DATEPART(MINUTE, CURRENT_TIMESTAMP) AS 'minute', 
	DATEPART(SECOND, CURRENT_TIMESTAMP) AS 'second';

SELECT register_date,
	DATEPART(YEAR, register_date) AS 'year', 
	DATEPART(MONTH, register_date) AS 'month', 
	DATEPART(DAY, register_date) AS 'day'
FROM Goods;