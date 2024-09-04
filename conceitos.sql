 CREATE TABLE Clientes (
 id_cliente INT PRIMARY KEY AUTO_INCREMENT,
 nome varchar(70) NOT NULL,
idade int(3) NOT NULL, 
cpf varchar(45) NOT NULL,
email varchar(70) NOT NULL
);         -- CRIAÇÃO DE UMA TABELA

INSERT INTO Clientes (nome, idade, cpf, email) VALUES ('Ana Beatriz', '19', '17092525705', 'oabeatriz.tech@outlook.com'); -- inserindo dados na tabela

INSERT INTO Clientes (nome, idade, cpf, email) VALUES ('Júlia', '26', '24092578512', 'julia@gmail.com');

SELECT * FROM Clientes;  -- fazendo a procura dos dados na tabela, o * seleciona todas as colunas da tabela

ALTER TABLE Clientes ADD COLUMN sexo VARCHAR(20); -- adicionando uma nova coluna na tabela

SET SQL_SAFE_UPDATES = 0; -- apenas para utilizar a clausula WHERE, protocolo de segurança do mysql

UPDATE Clientes set sexo = 'Feminino' WHERE id_cliente = 1;   -- atualizando o sexo deles conforme a nova coluna utilizando WHERE
UPDATE Clientes set sexo = 'Feminino' WHERE nome = 'Júlia';

SELECT * FROM Clientes;

ALTER TABLE Clientes MODIFY COLUMN sexo VARCHAR(20) NOT NULL;  -- modificando a coluna sexo para NOT NULL

INSERT INTO Clientes (nome, idade, cpf, email, sexo) VALUES ('Luana', '60', '24041258512', 'luana@hotmail.com', 'Feminino');

SELECT nome, idade FROM Clientes WHERE idade BETWEEN 15 AND 26; -- between é a seleção de valores no intervalo determinado

SELECT nome FROM Clientes WHERE idade > 25 AND idade < 61;   -- condicional

DELETE FROM Clientes WHERE id_cliente = 3;  -- apagando os registros do id_cliente '3'

SELECT * FROM Clientes;

-- exemplo para apagar coluna: ALTER TABLE Clientes DROP COLUMN sexo;



