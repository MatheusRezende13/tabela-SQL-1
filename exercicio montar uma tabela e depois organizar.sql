BEGIN 

PDRTS = (
SELECT 
	'Esponja' as "produto"
   ,0.9 as "preço antigo"
   ,1.2 as "preço novo"
   ,'01/02/20' as "data"
   
   FROM DUMMY 
  UNION ALL 
SELECT 
	'Esponja' as "produto"
   ,1.2 as "preço antigo"
   ,1.3 as "preço novo"
   ,'05/03/20' as "data"
   FROM DUMMY
  UNION ALL 
SELECT 
	'Sabonete' as "produto"
   ,0.75 as "preço antigo"
   ,0.9as "preço novo"
   ,'09/02/20' as "data"
   FROM DUMMY 
   UNION ALL 
SELECT 
	'Sabonete' as "produto"
   ,0.9 as "preço antigo"
   ,0.88 as "preço novo"
   ,'10/11/20' as "data"
	FROM DUMMY 
 UNION ALL 
SELECT 
	'Leite' as "produto"
   ,5.8 as "preço antigo"
   ,7 as "preço novo"
   ,'03/03/20' as "data"
   FROM DUMMY 
 UNION ALL
SELECT 
	'Leite' as "produto"
   ,7 as "preço antigo"
   ,8.8 as "preço novo"
   ,'15/05/2020' as "data"
   FROM DUMMY 
   );
   
   SELECT 
   T0."produto"
  ,FIRST_VALUE (T0."preço antigo" ORDER BY T0."data") as "preço"
  ,FIRST_VALUE (T0."preço novo" ORDER BY T0."data" desc) as "preço"
  
  FROM :PDRTS T0 
  
   
   
  GROUP BY
   T0."produto"
  
  ;
  
   END;
   
   
   
   
  	
   