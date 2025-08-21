/*
Aula de Alteração e Exclusão
*/

use informática;

show create table cliente;

desc cliente;

-- Alteração basicas de adição e remoção de coluna
ALTER TABLE cliente ADD COLUMN endereço VARCHAR(255);
ALTER TABLE cliente ADD COLUMN cidade VARCHAR(255);
ALTER TABLE cliente DROP COLUMN enderelo;
ALTER TABLE cliente ADD UNIQUE (email);

-- Alteração de coluna existente
ALTER TABLE cliente MODIFY nome VARCHAR(150);
ALTER TABLE cliente CHANGE nome nome_completo VARCHAR(255);
ALTER TABLE cliente ALTER cidade SET DEFAULT 'Não informado';


-- Alteração de chaves [ CUIDADO ]
ALTER TABLE cliente MODIFY id_cliente INT;
ALTER TABLE cliente DROP PRIMARY KEY;
ALTER TABLE cliente ADD PRIMARY KEY (id_cliente);

CREATE TABLE produto (id_produto INT PRIMARY KEY);
ALTER TABLE cliente ADD FOREIGN KEY (id_produto) REFERENCES produto(id_produto);

-- Renomear tabela
ALTER TABLE cliente RENAME TO clientes_antigos;

-- EXclusão de tabela
DROP TABLE clientes_antigos; # Não utilizar
DROP TABLE IF EXISTS clientes_antigos;