
-- Criação do DataBase

CREATE DATABASE db;




-- Criação da Tabela Inicial que será populada com os arquivos do csv

CREATE TABLE transactions(
	step INT,
	customer VARCHAR(30),
	age VARCHAR(3),
	gender VARCHAR(30),
	zipcodeOri VARCHAR(30),
	merchant VARCHAR(50),
	zipMerchant VARCHAR(30),
	category VARCHAR(50),
	amount FLOAT,
	fraud INT
);



-- A população da tabela 'transactions' foi feita manualmente com o csv, via pgAdmin