CREATE DATABASE IF NOT EXISTS mydb;
use mydb;
DROP procedure IF EXISTS MySQL_Test_Proc;
DELIMITER // ;
Create Procedure  MySQL_Test_Proc()
    BEGIN
    	DECLARE count1 INT DEFAULT 0;
		SET count1 = (SELECT COUNT(*) FROM mysql.user where user='oleg');
		IF (count1 = 0)  THEN
			CREATE USER 'oleg'@'localhost' IDENTIFIED BY '123';
			GRANT ALL PRIVILEGES ON mydb.* TO 'oleg'@'localhost';
			FLUSH PRIVILEGES;
		END IF;	

    END //
DELIMITER ; //
CALL MySQL_Test_Proc();