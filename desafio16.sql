DELIMITER $$

  CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(func_email VARCHAR (100))
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE total VARCHAR(200);
    SELECT 
      COUNT(JH.EMPLOYEE_ID) 
    FROM 
      hr.job_history AS JH
    WHERE JH.EMPLOYEE_ID = (SELECT E.EMPLOYEE_ID FROM hr.employees AS E WHERE EMAIL = func_email)
    INTO total;
    RETURN total;
  END $$

DELIMITER ;
