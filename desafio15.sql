DELIMITER $$

  CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
  BEGIN
    SELECT 
    ROUND(AVG(SALARY), 2) AS 'Média salarial' 
    FROM 
    hr.employees
    WHERE
    JOB_ID = (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = cargo);
  END $$

DELIMITER ;