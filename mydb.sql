CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;
CREATE TABLE IF NOT EXISTS users (id INT(50) NOT NULL AUTO_INCREMENT PRIMARY KEY, username VARCHAR(150), email VARCHAR(150), password VARCHAR(150), role VARCHAR(150), created DATETIME, updated DATETIME);
DROP procedure IF EXISTS MySQL_Test_Proc;
DELIMITER // ;
Create Procedure  MySQL_Test_Proc()
    BEGIN
    	DECLARE count1 INT DEFAULT 0;
		SET count1 = (SELECT COUNT(*) FROM users);
		IF (count1 = 0)  THEN
			INSERT INTO users (username, email, password, role, created, updated) 
			VALUES 
			('user1', 'user1@gmail.com', '06s7bIKs', 'admin', '2020-03-10 12:30:01', '2020-03-10 12:30:01'),
			('user2', 'user2@gmail.com', '68z6DiVo', 'operator', '2020-03-10 12:30:02', '2020-03-10 12:30:02'),
			('user3', 'user3@gmail.com', '1Nay6t1H', 'operator', '2020-03-10 12:30:02', '2020-03-10 12:30:02'),
			('user4', 'user4@gmail.com', 'fz271OOm', 'operator', '2020-03-10 12:30:03', '2020-03-10 12:30:03'),
			('user5', 'user5@gmail.com', 'OeR24b1r', 'operator', '2020-03-10 12:30:03', '2020-03-10 12:30:03'),
			('user6', 'user6@gmail.com', 'JD39g4zf', 'operator', '2020-03-10 12:30:04', '2020-03-10 12:30:04'),
			('user7', 'user7@gmail.com', 'abk10AV4', 'operator', '2020-03-10 12:30:04', '2020-03-10 12:30:04'),
			('user8', 'user8@gmail.com', 'HK13u3rn', 'operator', '2020-03-10 12:30:05', '2020-03-10 12:30:05'),
			('user9', 'user9@gmail.com', 'eD8y3D1c', 'operator', '2020-03-10 12:30:05', '2020-03-10 12:30:05'),
			('user10', 'user10@gmail.com', '8p13tdBM', 'user', '2020-03-10 12:30:06', '2020-03-10 12:30:06'),
			('user11', 'user11@gmail.com', '79Aju8zF', 'user', '2020-03-10 12:30:07', '2020-03-10 12:30:07'),
			('user12', 'user12@gmail.com', 'p4G7xf7I', 'user', '2020-03-10 12:30:08', '2020-03-10 12:30:08'),
			('user13', 'user13@gmail.com', 'Biro89R1', 'user', '2020-03-10 12:30:09', '2020-03-10 12:30:09');
		END IF;	
		SET count1 = (SELECT COUNT(*) FROM mysql.user where user='oleg');
		IF (count1 = 0)  THEN
			CREATE USER 'oleg'@'localhost' IDENTIFIED BY '123';
			GRANT ALL PRIVILEGES ON mydb.* TO 'oleg'@'localhost';
			FLUSH PRIVILEGES;
		END IF;	

    END //
DELIMITER ; //
CALL MySQL_Test_Proc();