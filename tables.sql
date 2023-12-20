DROP TABLE IF EXISTS 'companies';
DROP TABLE IF EXISTS 'Contracts';
DROP TABLE IF EXISTS 'Materials';
DROP TABLE IF EXISTS 'Warehouse';
CREATE TABLE companies (
ID INTEGER PRIMARY KEY,
Name VARCHAR(255) UNIQUE,
Pesonnel FLOAT NOT NULL,
Balance FLOAT NOT NULL,
Machiney FLOAT NOT NULL,
Done_Contracts FLOAT NOT NULL,
Active_Contracts FLOAT NOT NULL,
Government_Contracts BOOL);
INSERT INTO 'companies' VALUES(1,'ПИК',56876,154534320000,478,1432,28,0);
INSERT INTO 'companies' VALUES(2,'Самолет',36856,1928349374,287,689,10,0);
INSERT INTO 'companies' VALUES(3,'Гранель',41853,27584388399,354,893,18,0);
INSERT INTO 'companies' VALUES(4,'Эталон',39754,217546543593,301,783,13,1);
INSERT INTO 'companies' VALUES(5,'Девелопмент',53289,478639893,943,863,23,1);
CREATE TABLE Contracts (
ID INTEGER,
comp_id INTEGER REFERENCES companies (ID),
Building VARCHAR(255),
Profit FLOAT NOT NULL,
PRIMARY KEY (ID, comp_id));
INSERT INTO 'Contracts' VALUES(1,1,'ЖК Апельсин',573788238234);
INSERT INTO 'Contracts' VALUES(2,3,'ЖК Столица',47823747823782);
INSERT INTO 'Contracts' VALUES(3,5,'Исследовательский Центр Информационных Технологий',489234928318423);
INSERT INTO 'Contracts' VALUES(4,2,'Склады',3124432343);
INSERT INTO 'Contracts' VALUES(5,4,'ЖК Волга',478237417882);
INSERT INTO 'Contracts' VALUES(6,4,'Институт ядерных исследований',947814576823552);
INSERT INTO 'Contracts' VALUES(7,3,'Магистраль',427634762376);
CREATE TABLE Materials (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'Materials' VALUES(1,'цемент',1129);
INSERT INTO 'Materials' VALUES(2,'бетон',729);
INSERT INTO 'Materials' VALUES(3,'кирпич',896);
INSERT INTO 'Materials' VALUES(4,'камень',439);
INSERT INTO 'Materials' VALUES(5,'дерево',365);
INSERT INTO 'Materials' VALUES(6,'песок',287);
INSERT INTO 'Materials' VALUES(7,'чёрные металлы',1780);
INSERT INTO 'Materials' VALUES(8,'стекло',1539);
INSERT INTO 'Materials' VALUES(9,'кровельные материалы',1253);
INSERT INTO 'Materials' VALUES(10,'пластик',652);
CREATE TABLE Warehouse (
comp_ID INTEGER REFERENCES companies (ID),
mate_ID INTEGER REFERENCES materials (ID),
quantity INTEGER NOT NULL,
PRIMARY KEY(comp_ID, mate_ID));
INSERT INTO 'Warehouse' VALUES(1,2,57678);
INSERT INTO 'Warehouse' VALUES(2,3,85223);
INSERT INTO 'Warehouse' VALUES(3,4,100473);
INSERT INTO 'Warehouse' VALUES(2,2,38853);
INSERT INTO 'Warehouse' VALUES(5,8,127543);
INSERT INTO 'Warehouse' VALUES(4,3,234543);
INSERT INTO 'Warehouse' VALUES(1,7,30919);
INSERT INTO 'Warehouse' VALUES(3,5,78543);
INSERT INTO 'Warehouse' VALUES(3,9,12394);
INSERT INTO 'Warehouse' VALUES(2,6,67483);
