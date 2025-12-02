-- Maak database als deze nog niet bestaat
CREATE DATABASE IF NOT EXISTS Breezedemo2;

-- Selecteer de database
USE Breezedemo2;

-- Maak tabel Users als die nog niet bestaat (optioneel maar handig)
CREATE TABLE IF NOT EXISTS Users (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    rolename VARCHAR(100)
);

-- Verwijder stored procedure als hij al bestaat
DROP PROCEDURE IF EXISTS SP_GetAllUsers;

DELIMITER $$

-- Maak stored procedure opnieuw
CREATE PROCEDURE SP_GetAllUsers(
    IN p_Id INTEGER
)
BEGIN
    SELECT 
        USRS.Id,
        USRS.name,
        USRS.email,
        USRS.rolename
    FROM Users AS USRS
    WHERE USRS.Id != p_Id;
END $$

DELIMITER ;
