/*
 * Nome do autor: Ilton Batista da Silva Júnior 
 * Data de criação do arquivo: 26/12/2018 
 * Objetivo sucinto do programa: Criar um banco de dados que armazena informação de uma pessoa
 * Referência ao enunciado/origem do exercício: https://www.youtube.com/watch?v=NCG9niOlm40
 */
 
 /*Cria o banco de dados*/
 create database cadastro;
 
 /*Deleta banco de dados*/
 drop database cadastro;
 
 /*Usa tabela*/
use cadastro;

/*Cria tabela*/
CREATE TABLE pessoas(
	id int NOT NULL auto_increment,
	nome varchar(30) NOT NULL,
	nascimento date,
	sexo enum('M','F'),
	peso decimal(5,2),
	altura decimal(3,2),
	nacionalidade varchar(20) DEFAULT 'Brasil',
    PRIMARY KEY(id)
) DEFAULT CHARSET = utf8;

/*Insere registro em cada um na tabela*/
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Carlos', '1982-04-14', 'M', '180.5', '2.00', 'India'),
('Luiza', '2001-04-14', 'F', '60.5', '1.66', 'Brasil'),
('Neuza', '1920-08-1', 'F', '70.5', '1.56', 'Brasil'),
('Isabela', '1981-12-31', 'F', '65.5', '1.60', 'Orlanda'),
('Teresa', '1974-04-1', 'F', '83.5', '1.60', 'Brasil'),
('Julio', '1989-04-14', 'M', '90.5', '1.90', 'Brasil');

/*Apaga todos os registros de uma tabela*/
TRUNCATE TABLE pessoas;

/*Mostro todos os valores da tabela*/
desc pessoas;

/*Adiciona mas uma coluna a uma tabela existene*/
alter table pessoas
add column profissao varchar(10);

/*Mostra a tabela inteira*/
select * from pessoas;

/*Remove profissão*/
alter table pessoas
drop column profissao;

/*Adiciona mas uma coluna a uma tabela existente depois de nome*/
alter table pessoas
add column profissao varchar(10) after nome;

/*Adicionar como primeiro*/
ALTER TABLE pessoas
add column codigo int FIRST;


