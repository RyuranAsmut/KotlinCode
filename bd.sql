CREATE DATABASE politicagem;
USE poiliticagem;

CREATE TABLE Partido(
    idPartido INT NOT NULL PRIMARY KEY,
    siglaPartido VARCHAR(45) NOT NULL,
    descicaoPartido VARCHAR(45) NOT NULL
);

CREATE TABLE Deputado(
    idDeputado INT NOT NULL PRIMARY KEY,
    nomeDeputado VARCHAR(60) NOT NULL,
    idPartido INT NOT NULL,
    FOREIGN KEY(idPartido) REFERENCES Partido(idPartido)
);

CREATE TABLE Secao(
    idSecao INT NOT NULL PRIMARY KEY,
    dataSecao DATE NOT NULL,
    horaSecao TIME NOT NULL,
    decisao VARCHAR(2000) NOT NULL
);

CREATE TABLE Participacao(
    idSecao INT NOT NULL PRIMARY KEY,
    idDeputado INT NOT NULL PRIMARY KEY,
    FOREIGN KEY(idDeputado) REFERENCES Deputado(idDeputado),
    FOREIGN KEY(idSecao) REFERENCES Secao(idSecao)
);

INSERT INTO Partido VALUES(0, "PCC", "PARTIDO CARA CRACHA"),
    (1,"IPTU", "TRISTEZA"),
    (2,"PUTA","Partido Ultra Tradicionalista Americano");

INSERT INTO Deputado VALUES(0,"Gerson Vaca", 0),
(1,"Gilson Pinha",0),
(2,"Gislaine Penha",0),
(3,"Seu Creison",1),
(4,"Tom Cruz", 1),
(5,"Pastor DiMerda", 2),
(6,"Cleyton Maluf", 2);

INSERT INTO Secao VALUES(0, '2019-11-11', '22:22:23', "Pizza"),
(1,'2020-01-02', '06:09:40', 'Nada'),
(2, '2020-04-20', '16:20:00', "May the Force");

INSERT INTO Participacao VALUES(0, 0),
(1,2),
(1,4),
(2,1),
(2,3);

select Deputado.nomeDeputado, Secao.dataSecao from Deputado
inner join Participacao on Deputado.idDeputado = Participacao.idDeputado
inner join Secao on Participacao.idSecao = Secao.idSecao;