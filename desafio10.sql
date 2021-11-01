SELECT 
  P.ProductName AS 'Produto',
  MIN(O.Quantity) AS 'Mínima',
  MAX(O.Quantity) AS 'Máxima',
  ROUND(SUM(O.Quantity)/COUNT(O.Quantity), 2) AS 'Média'
FROM 
  w3schools.products AS P
  INNER JOIN
  w3schools.order_details AS O ON P.ProductID = O.ProductID
GROUP BY O.ProductID
HAVING
  ROUND(SUM(O.Quantity)/COUNT(O.Quantity), 2) > 20.00
ORDER BY
  ROUND(SUM(O.Quantity)/COUNT(O.Quantity), 2),
  P.ProductName;
