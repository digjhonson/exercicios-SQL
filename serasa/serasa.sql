--criação do codigo
 
 
CREATE DATABASE Serasa;
 
-- criação de emprego
 
CREATE TABLE empregado (
    CODIGO INT,
    NOME VARCHAR(255),
    DEPTO INT,
    SALARIO DECIMAL(10, 2)
);
-- dados na tabela empregado
INSERT INTO empregado (CODIGO, NOME, DEPTO, SALARIO) VALUES
(43500, 'Ana da Silva', 9411, 5200.00),
(43501, 'Vitoria Beatriz', 9411, 3400.00),
(43502, 'Pedro José', 9412, 2600.00),
(43503, 'Amary Manoel', 9412, 8400.00),
(43504, 'Carlos Silva', 9412, 5600.00),
(43505, 'Vitorio Cardoso', 9413, 2300.00),
(43506, 'Carlos Ives Souza', 9413, 3380.00),
(43507, 'Victor Silva', 9413, 4500.00),
(43508, 'Saulo Monteiro', 9413, 6800.00);
 
--1 alterar todos para 9414
UPDATE empregado SET DEPTO = 9414;
--2 alterar os tres primeiros para 9415
UPDATE empregado SET DEPTO = 9415 WHERE CODIGO IN (43500, 43501, 43502);
--3 alterar o valora para o originalmente
UPDATE empregado SET DEPTO = 9411 WHERE CODIGO IN (43500, 43501);
UPDATE empregado SET DEPTO = 9412 WHERE CODIGO IN (43502, 43503, 43504);
UPDATE empregado SET DEPTO = 9413 WHERE CODIGO IN (43505, 43506, 43507, 43508);
--4 select todos para o banco de dados
SELECT * FROM empregado;
--5 selecinnar se o valor for igual a 6800.00
SELECT NOME FROM empregado WHERE SALARIO = 6800.00;
--6 selecinnar se o valor for igual a 5200.00
SELECT CODIGO, NOME FROM empregado WHERE SALARIO = 5200.00;
--7  realize um select onde o salario for maior que 3000 e meno que 5500.00
SELECT DEPTO FROM empregado WHERE SALARIO > 3000.00 AND SALARIO < 5500.00;
--8 selecione uma coluna entre 2600 e 3380.00
SELECT CODIGO, DEPTO FROM empregado WHERE SALARIO BETWEEN 2600.00 AND 3380.00;
--9(Essa consulta não retorna nada, pois não há nenhum funcionário que trabalhe em ambos os departamentos ao mesmo tempo)
SELECT NOME FROM empregado WHERE DEPTO = 9411 AND DEPTO = 9412;
 
--10 salario , nome onde o codigo for 43500 ou 43502
SELECT DEPTO, SALARIO, NOME FROM empregado WHERE CODIGO = 43500 OR CODIGO = 43502;
--11 realizando um SUM com todos os salarios da tabela
SELECT SUM(SALARIO) FROM empregado;