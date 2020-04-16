SELECT goods_name, goods_classify,
CASE	 WHEN goods_classify='clothes' 
			THEN 'A:'+goods_classify
		WHEN goods_classify='office' 
			THEN 'B:'+goods_classify 
		WHEN goods_classify='kitchen' 
			THEN 'C:'+goods_classify 
		ELSE NULL
	END AS New_Classify 
FROM goods;


SELECT SUM
	(CASE 
	WHEN goods_classify='clothes' 
		THEN sell_price ELSE 0 END) 
			AS sum_cloth, SUM(CASE WHEN goods_classify='office' 
		THEN sell_price ELSE 0 END) AS sum_office, SUM
	(CASE 
		WHEN goods_classify='kitchen' 
			THEN sell_price ELSE 0 END) AS sum_kitchen
FROM Goods;