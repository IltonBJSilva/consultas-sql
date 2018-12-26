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

/*Modifica o tamanho que cabe em profissão deixa vazio sem ser null*/
alter table pessoas
modify column profissao varchar(20) not null default '';

/*Renomear a coluna e colocar todas as constrants e tipos*/
alter table pessoas
change column profissao prof varchar(20);

/*Novo nome da tabel em desc*/
desc gafanhotos;

/*Modificar o nome da tabela inteira*/
alter table pessoas
rename to gafanhotos;


/*
NOVO TABELA
*/

/*Criar uma nova tabela se ele não existir*/
CREATE TABLE IF NOT EXISTS cursos(

	nome varchar(30) NOT NULL UNIQUE,
    descricao text,
    carga int unsigned,
    totaulas int,
    ano year default '2016'

) DEFAULT CHARSET = utf8;

describe cursos;

ALTER TABLE cursos
add column idcursos int first;

ALTER TABLE cursos
add primary key (idcursos);

/*Apagar a tabela inteira*/
drop table cursos;

select * from gafanhotos;
select * from cursos;

insert into cursos value
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritimo','Logica de Programação','20','15','2014'),
('3','Photoshop','Dica de Photoshop cc','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução a linguagem Java','10','29','2000'),
('6','MySQL','Banco de dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber ','Gerar polêmica e ganhar inscritos','5','2','2018');


/*Modificar os erros*/
/*Alterar uma linha*/
-- Modifica O NOME DO idcurso 1 de html4 para html5
update cursos
set nome = 'HTML5'
where idcursos = '1';

-- Para alterar os 2 ao mesmo tempo
UPDATE cursos
SET nome = 'PHP', ano = '2015'
where idcursos = '4';

-- limit = limitar quantas linhas podem ser afetadas no banco
UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcursos = '5'
LIMIT 1;
