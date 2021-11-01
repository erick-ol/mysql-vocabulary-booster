SELECT 
  C.ContactName AS 'Nome de contato',
  S.ShipperName AS 'Empresa que fez o envio',
  O.OrderDate AS 'Data do pedido'    
FROM 
  w3schools.orders AS O
  INNER JOIN 
  w3schools.customers AS C ON O.CustomerID = C.CustomerID
  INNER JOIN
  w3schools.shippers AS S ON O.ShipperID = S.ShipperID
WHERE
  S.ShipperName != 'Federal Shipping'
ORDER BY
  C.ContactName,
  S.ShipperName,
  O.OrderDate;
