-- Cria o banco de dados
CREATE DATABASE hospital;
 
-- Usa o banco de dados criado
USE hospital;
 
-- Cria a tabela CRIANÇA
CREATE TABLE CRIANÇA (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Peso DECIMAL(5, 2),
    Altura DECIMAL(5, 2),
    DataNascimento DATE
);
 
-- Cria a tabela MÃE
CREATE TABLE MÃE (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereço VARCHAR(255),
    Telefone VARCHAR(20)
);
 
-- Cria a tabela NASCIMENTO
CREATE TABLE NASCIMENTO (
    ID INT PRIMARY KEY,
    Hora TIME,
    ID_Médico INT,
    Data DATE,
    FOREIGN KEY (ID_Médico) REFERENCES MÉDICO(ID)
);
 
-- Cria a tabela MÉDICO
CREATE TABLE MÉDICO (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Especialidade VARCHAR(255),
    CRM VARCHAR(20)
);INSERT INTO MÉDICO (ID, Nome, Especialidade, CRM) VALUES
(11245, 'Juliana Alves Albuquerque', 'Obstetrícia', '123584'),
(11246, 'Pedro da Silva Santos', 'Nutrologia Pediátrica', '658985'),
(11546, 'Vinicius Lima de Oliveira', 'Neonatologia', '458755'),
(11468, 'Bruna Paes Chaves', 'Obstetrícia', '246585');
DELETE FROM MÉDICO WHERE Especialidade = 'Neonatologia';
TRUNCATE TABLE CRIANÇA;
TRUNCATE TABLE MÃE;
TRUNCATE TABLE NASCIMENTO;
TRUNCATE TABLE MÉDICO;
DROP DATABASE hospital;
