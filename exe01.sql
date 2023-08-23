CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
cpf integer not null,
nome varchar (100) not null,
nascimento date not null,
nome_da_mae varchar (100) not null,
dt_admissao date not null,
primary key (cpf)
);
INSERT INTO tb_colaboradores (cpf, nome, nascimento,nome_da_mae, dt_admissao) values (123,"Amanda de Oliveira",sysdate(), "Carol de Oliveira",sysdate());
SELECT * FROM tb_colaboradores;
DELETE FROM tb_colaboradores WHERE cpf=123;
ALTER TABLE tb_colaboradores MODIFY cpf bigint;

INSERT INTO tb_colaboradores (cpf, nome, nascimento,nome_da_mae, dt_admissao) values (12345678912,"Amanda de Oliveira","1995-08-02", "Carol de Oliveira","2020-08-21");
INSERT INTO tb_colaboradores (cpf, nome, nascimento,nome_da_mae, dt_admissao) values (14785236914,"João da Silva","1983-11-09", "Joana da Silva","2020-06-15");
INSERT INTO tb_colaboradores (cpf, nome, nascimento,nome_da_mae, dt_admissao) values (78945612304,"Sandro Alves","1994-12-05", "Coralina Alves","2020-05-22");
INSERT INTO tb_colaboradores (cpf, nome, nascimento,nome_da_mae, dt_admissao) values (95175385248,"Maria Eduarda","1975-06-09", "Vivian Gomes","2020-04-23");
INSERT INTO tb_colaboradores (cpf, nome, nascimento,nome_da_mae, dt_admissao) values (65495141428,"Gustavo da Silva","1993-10-03", "Gilmara da Silva","2018-01-11");

ALTER TABLE tb_colaboradores ADD salario  decimal (6,2) ;
UPDATE tb_colaboradores SET salario=2000 WHERE cpf=12345678912;
UPDATE tb_colaboradores SET salario=2500 WHERE cpf=14785236914;
UPDATE tb_colaboradores SET salario=1800 WHERE cpf=65495141428;
UPDATE tb_colaboradores SET salario=3000 WHERE cpf=78945612304;
UPDATE tb_colaboradores SET salario=2100 WHERE cpf=95175385248;

SELECT * FROM tb_colaboradores WHERE salario>2000;
SELECT * FROM tb_colaboradores WHERE salario<2000;

UPDATE tb_colaboradores SET salario=3400 WHERE cpf=95175385248;






