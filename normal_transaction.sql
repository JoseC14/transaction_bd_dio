-- Checa se já existe um gerente no setor
 START TRANSACTION;

SET @haveManager = (SELECT COUNT(*) FROM employer WHERE isManager = TRUE AND id_department = 1);

IF @haveManager > 0 THEN
	ROLLBACK;
ELSE
	INSERT INTO employer(firstName, lastName, address, id_department, isManager, id_project, id_salary) VALUES('Ryan', 'Mason', 'St.John Street', 1, TRUE, 1, 2);
	COMMIT;
END IF;