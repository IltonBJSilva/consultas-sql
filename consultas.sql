use cadastro;
CREATE TABLE pessoas(
	id int NOT NULL AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
	nascimento date,
	sexo enum('M','F'),
	peso decimal(5,2),
	altura decimal(3,2),
	nacionalidade varchar(20) DEFAULT 'Brasil'
) DEFAULT CHARSET = utf8;

