DELIMITER $$

  CREATE TRIGGER trigger_perfil_insert
  BEFORE INSERT ON w3schools.orders
  FOR EACH ROW
  BEGIN
    SET NEW.OrderDate = DATE(NOW());
  END $$

DELIMITER ;
