set DATEFORMAT dmy

 ALTER TABLE [SHIP] DROP [ship_fk0]
ALTER TABLE [SHIP] DROP  [ship_fk1] 
ALTER TABLE [ROUTE_LIST] DROP  [ROUTE_LIST_fk0] 
ALTER TABLE [ROUTE_LIST] DROP   [ROUTE_LIST_fk1] 
ALTER TABLE [ROUTE] DROP   [ROUTE_fk0] 
ALTER TABLE [ROUTE] DROP   [ROUTE_fk1] 
ALTER TABLE [EMPLOYEE] DROP   [EMPLOYEE_fk0] 
ALTER TABLE [EMPLOYEE] DROP   [EMPLOYEE_fk1] 
ALTER TABLE [PORTS] DROP   [PORTS_fk0] 
ALTER TABLE [GOODS] DROP   [GOODS_fk0] 
ALTER TABLE [GOODS] DROP   [GOODS_fk1] 

DROP TABLE SHIP
DROP TABLE ROUTE_LIST
DROP TABLE OWNERS
DROP TABLE ROUTE
DROP TABLE PORTS
DROP TABLE CITY
DROP TABLE GOODS
DROP TABLE CUSTOMERS_GOODS
DROP TABLE CAPTAINS
DROP TABLE EMPLOYEE
DROP TABLE JOBS

CREATE TABLE SHIP (
	ship_id INT NOT NULL,
	 name  VARCHAR(255),
	 year_of_construction  INT NOT NULL,
	 tonage  INT NOT NULL,
	 i06ersion  INT NOT NULL,
	 captain_id  INT NOT NULL,
	 owners_id  INT NOT NULL,
	PRIMARY KEY ( ship_id )
);

CREATE TABLE  ROUTE_LIST  (
	 sheet_number  INT NOT NULL ,
	 ship_id  INT,
	 route_id  INT,
	 departure  DATETIME NOT NULL,
	 arrival  DATETIME NOT NULL,
	PRIMARY KEY ( sheet_number )
);

CREATE TABLE  captains  (
	 captain_id  INT NOT NULL  ,
	 name  VARCHAR(255),
	 surname  VARCHAR(255) NOT NULL,
	 working_expirience  INT NOT NULL,
	PRIMARY KEY ( captain_id )
);

CREATE TABLE  Ports  (
	 port_id  INT NOT NULL  ,
	 city_id  INT NOT NULL,
	PRIMARY KEY ( port_id )
);

CREATE TABLE  Route  (
	 route_id  INT NOT NULL,
	 departure_port_code  INT NOT NULL,
	 arrival_port_code  INT NOT NULL,
	PRIMARY KEY ( route_id )
);

CREATE TABLE  CITY  (
	 city_id  INT NOT NULL,
	 city  VARCHAR(255) NOT NULL,
	 country  VARCHAR(255) NOT NULL,
	PRIMARY KEY ( city_id )
);

CREATE TABLE  employee  (
	 employee_id  INT NOT NULL,
	 first_name  VARCHAR(255) NOT NULL,
	 last_name  VARCHAR(255) NOT NULL,
	 ship_id  INT NOT NULL,
	 job_id  INT NOT NULL,
	 date_received  DATE NOT NULL,
	PRIMARY KEY ( employee_id )
);

CREATE TABLE  owners  (
	 owners_id  INT NOT NULL  ,
	 first_name  VARCHAR(255) NOT NULL  ,
	 last_name  VARCHAR(255) NOT NULL  ,
	 email  VARCHAR(255) NOT NULL  ,
	PRIMARY KEY ( owners_id )
);

CREATE TABLE Goods  (
	 goods_id  INT NOT NULL  ,
	 type  VARCHAR(255) NOT NULL  ,
	 weight  INT NOT NULL  ,
	 customer_id  INT NOT NULL  ,
	 sheet_number  INT NOT NULL  ,
	PRIMARY KEY ( goods_id )
);

CREATE TABLE  Customers_goods  (
	 customer_id  INT IDENTITY(901, 1),
	 first_name  VARCHAR(255) NOT NULL,
	 last_name  VARCHAR(255) NOT NULL,
	PRIMARY KEY ( customer_id )
);

CREATE TABLE  Jobs  (
	 job_id  INT NOT NULL,
	 job  VARCHAR(255) NOT NULL,
	PRIMARY KEY ( job_id )
);
INSERT INTO ROUTE_LIST VALUES (1,701,001,'2019-07-01 10:00:00','2019-07-01 18:00:00');
INSERT INTO ROUTE_LIST VALUES (2,702,001,'2019-07-01 21:00:00','2019-07-02 08:00:00');
INSERT INTO ROUTE_LIST VALUES (3,701,002,'2019-07-02 10:00:00','2019-07-02 18:00:00');
INSERT INTO ROUTE_LIST VALUES (4,702,002,'2019-07-02 20:00:00','2019-07-03 07:00:00');
INSERT INTO ROUTE_LIST VALUES (5,701,001,'2019-07-03 10:00:00','2019-07-03 18:00:00');
INSERT INTO ROUTE_LIST VALUES (6,702,001,'2019-07-03 21:00:00','2019-07-04 08:00:00');
INSERT INTO ROUTE_LIST VALUES (7,701,002,'2019-07-04 10:00:00','2019-07-04 18:00:00');
INSERT INTO ROUTE_LIST VALUES (8,702,002,'2019-07-04 20:00:00','2019-07-05 07:00:00');
INSERT INTO ROUTE_LIST VALUES (9,701,001,'2019-07-05 10:00:00','2019-07-05 18:00:00');
INSERT INTO ROUTE_LIST VALUES (10,702,001,'2019-07-05 21:00:00','2019-07-06 08:00:00');
INSERT INTO ROUTE_LIST VALUES (11,701,002,'2019-07-06 10:00:00','2019-07-06 18:00:00');
INSERT INTO ROUTE_LIST VALUES (12,702,002,'2019-07-06 20:00:00','2019-07-07 07:00:00');
INSERT INTO ROUTE_LIST VALUES (13,701,001,'2019-07-07 10:00:00','2019-07-07 18:00:00');
INSERT INTO ROUTE_LIST VALUES (14,702,001,'2019-07-07 21:00:00','2019-07-08 08:00:00');
INSERT INTO ROUTE_LIST VALUES (15,701,002,'2019-07-08 10:00:00','2019-07-08 18:00:00');
INSERT INTO ROUTE_LIST VALUES (16,702,002,'2019-07-08 20:00:00','2019-07-09 07:00:00');
INSERT INTO ROUTE_LIST VALUES (17,701,001,'2019-07-09 10:00:00','2019-07-09 18:00:00');
INSERT INTO ROUTE_LIST VALUES (18,702,001,'2019-07-09 21:00:00','2019-07-10 08:00:00');
INSERT INTO ROUTE_LIST VALUES (19,701,002,'2019-07-10 10:00:00','2019-07-10 18:00:00');
INSERT INTO ROUTE_LIST VALUES (20,702,002,'2019-07-10 20:00:00','2019-07-11 07:00:00');


INSERT INTO ship VALUES (701,'Flying Dutchman',1999,200,6,101,201);
INSERT INTO ship VALUES (702,'Black Pearl',2003,600,18,102,202);


INSERT INTO owners VALUES (201,'oleg','ivanov','olegiv@mail.ru');
INSERT INTO owners VALUES (202,'yuri','rusinov','yurirus@mail.ru');

INSERT INTO captains VALUES (101,'igor','ryblin',3);
INSERT INTO captains VALUES (102,'roman','nepeivoda',3);


INSERT INTO employee VALUES (401,'fedor','gutin',701,301,'17.06.20');
INSERT INTO employee VALUES (402,'ivan','lebedev',701,301,'18.06.21');
INSERT INTO employee VALUES (403,'fedor','avdeev',701,301,'16.05.23');
INSERT INTO employee VALUES (404,'roman','lobanov',701,301,'17.06.10');
INSERT INTO employee VALUES (405,'dmitriy','nikonov',702,301,'15.05.10');
INSERT INTO employee VALUES (406,'liza','malysheva',702,301,'18.06.10');
INSERT INTO employee VALUES (407,'liza','rybkina',702,301,'18.07.11');
INSERT INTO employee VALUES (408,'liza','zarechneva',702,301,'18.06.10');
INSERT INTO employee VALUES (409,'nikita','podlip',701,302,'17.06.11');
INSERT INTO employee VALUES (410,'alexander','markov',701,302,'18.06.10');
INSERT INTO employee VALUES (411,'karim','burov',702,302,'17.06.22');
INSERT INTO employee VALUES (412,'platon','lapin',702,302,'17.04.10');
INSERT INTO employee VALUES (413,'andrey','polyakov',701,303,'17.06.10');
INSERT INTO employee VALUES (414,'roman','ivanov',702,303,'18.05.11');
INSERT INTO employee VALUES (415,'dmitriy','gutin',701,304,'17.06.16');
INSERT INTO employee VALUES (416,'nikita','gutin',701,304,'17.06.10');
INSERT INTO employee VALUES (417,'fedor','lapin',701,304,'16.05.10');
INSERT INTO employee VALUES (418,'roman','gutin',701,304,'17.06.23');
INSERT INTO employee VALUES (419,'ivan','noskov',701,304,'17.05.10');
INSERT INTO employee VALUES (420,'bogdan','panov',701,304,'17.04.14');
INSERT INTO employee VALUES (421,'nikolay','doronin',701,304,'18.05.12');
INSERT INTO employee VALUES (422,'alexander','zarechnev',701,304,'18.06.10');
INSERT INTO employee VALUES (423,'fedor','panov',701,304,'17.06.13');
INSERT INTO employee VALUES (424,'vovan','romchenko',701,304,'16.06.18');
INSERT INTO employee VALUES (425,'bogdan','gutin',701,304,'17.06.10');
INSERT INTO employee VALUES (426,'danil','ivanov',701,304,'16.06.11');
INSERT INTO employee VALUES (427,'ivan','novikov',701,304,'17.06.10');
INSERT INTO employee VALUES (428,'alexander','yzbek',701,304,'16.06.05');
INSERT INTO employee VALUES (429,'ivan','panov',701,304,'17.06.10');
INSERT INTO employee VALUES (430,'fedor','doronin',701,304,'17.06.10');
INSERT INTO employee VALUES (431,'nikita','novikov',702,304,'17.06.10');
INSERT INTO employee VALUES (432,'ignat','ignatov',702,304,'16.05.10');
INSERT INTO employee VALUES (433,'andrey','rybkin',702,304,'17.06.10');
INSERT INTO employee VALUES (434,'roman','romanov',702,304,'17.05.10');
INSERT INTO employee VALUES (435,'vladislav','malyshev',702,304,'16.06.10');
INSERT INTO employee VALUES (436,'vladimir','alexandrov',702,304,'17.06.10');
INSERT INTO employee VALUES (437,'vladislav','efimov',702,304,'17.06.14');
INSERT INTO employee VALUES (438,'vitaliy','nazarenko',702,304,'16.06.08');
INSERT INTO employee VALUES (439,'roman','fedorov',702,304,'16.06.14');
INSERT INTO employee VALUES (440,'nikolay','efimov',702,304,'17.05.10');
INSERT INTO employee VALUES (441,'ivan','ageev',702,304,'18.06.13');
INSERT INTO employee VALUES (442,'nitita','alekseev',702,304,'17.06.10');
INSERT INTO employee VALUES (443,'dmitriy','bekker',702,304,'17.06.09');
INSERT INTO employee VALUES (444,'vladislav','bogdanov',702,304,'18.04.10');
INSERT INTO employee VALUES (445,'ilya','volkov',702,304,'17.05.11');
INSERT INTO employee VALUES (446,'ilya','gvozdev',702,304,'18.06.10');

INSERT INTO Route VALUES (001,801,802);
INSERT INTO Route VALUES (002,802,801);


INSERT INTO Ports VALUES (801,201);
INSERT INTO Ports VALUES (802,202);


INSERT INTO City VALUES (201,'Bar','Montenegro');
INSERT INTO City VALUES (202,'Ravenna','Italy');


INSERT INTO Goods VALUES (801,'passegener car',2,901,1);
INSERT INTO Goods VALUES (802,'passegener car',1,901,1);
INSERT INTO Goods VALUES (803,'passegener car',2,902,1);
INSERT INTO Goods VALUES (804,'passegener car',2,903,1);
INSERT INTO Goods VALUES (805,'passegener car',2,904,1);
INSERT INTO Goods VALUES (806,'passegener car',2,905,1);
INSERT INTO Goods VALUES (807,'passegener car',1,906,1);
INSERT INTO Goods VALUES (808,'passegener car',2,907,1);
INSERT INTO Goods VALUES (809,'passegener car',2,907,1);
INSERT INTO Goods VALUES (810,'passegener car',2,908,1);
INSERT INTO Goods VALUES (811,'passegener car',2,909,1);
INSERT INTO Goods VALUES (812,'passegener car',2,909,1);
INSERT INTO Goods VALUES (813,'lorry',10,910,1);
INSERT INTO Goods VALUES (814,'lorry',12,911,1);
INSERT INTO Goods VALUES (815,'lorry',10,912,1);
INSERT INTO Goods VALUES (816,'lorry',12,913,1);
INSERT INTO Goods VALUES (817,'lorry',10,914,1);
INSERT INTO Goods VALUES (818,'lorry',10,915,1);
INSERT INTO Goods VALUES (819,'lorry',12,916,1);
INSERT INTO Goods VALUES (820,'lorry',10,917,1);
INSERT INTO Goods VALUES (821,'passegener car',2,918,2);
INSERT INTO Goods VALUES (822,'passegener car',1,919,2);
INSERT INTO Goods VALUES (823,'passegener car',2,920,2);
INSERT INTO Goods VALUES (824,'passegener car',2,922,2);
INSERT INTO Goods VALUES (825,'passegener car',2,923,2);
INSERT INTO Goods VALUES (826,'passegener car',2,924,2);
INSERT INTO Goods VALUES (827,'passegener car',1,924,2);
INSERT INTO Goods VALUES (828,'passegener car',2,925,2);
INSERT INTO Goods VALUES (829,'passegener car',2,925,2);
INSERT INTO Goods VALUES (830,'passegener car',2,926,2);
INSERT INTO Goods VALUES (831,'passegener car',2,927,2);
INSERT INTO Goods VALUES (832,'passegener car',2,928,2);
INSERT INTO Goods VALUES (833,'lorry',10,935,2);
INSERT INTO Goods VALUES (834,'lorry',10,936,2);
INSERT INTO Goods VALUES (835,'lorry',10,937,2);
INSERT INTO Goods VALUES (836,'lorry',10,938,2);
INSERT INTO Goods VALUES (837,'lorry',10,939,2);
INSERT INTO Goods VALUES (838,'lorry',10,940,2);
INSERT INTO Goods VALUES (839,'lorry',10,941,2);
INSERT INTO Goods VALUES (840,'lorry',10,942,2);
INSERT INTO Goods VALUES (841,'lorry',10,943,2);
INSERT INTO Goods VALUES (842,'lorry',10,944,2);
INSERT INTO Goods VALUES (843,'passegener car',2,929,3);
INSERT INTO Goods VALUES (844,'passegener car',2,929,3);
INSERT INTO Goods VALUES (845,'passegener car',2,930,3);
INSERT INTO Goods VALUES (846,'passegener car',2,931,3);
INSERT INTO Goods VALUES (847,'passegener car',2,931,3);
INSERT INTO Goods VALUES (848,'passegener car',2,932,3);
INSERT INTO Goods VALUES (849,'passegener car',2,933,3);
INSERT INTO Goods VALUES (850,'passegener car',2,934,3);


INSERT INTO Customers_goods ([first_name],[last_name]) VALUES 
('	Timofey	 ', '	Koshelev'),
('	Gleb	 ', '	Vishnyakov'),
('	Danila	 ', '	Osipov	 '),
('	Ruslan	 ', '	Gerasimov	 '),
('	Sergey	 ', '	Rybakov	 '),
('	Danila	 ', '	Filippov	 '),
('	Aleksandr	 ', '	Suhanov	 '),
('	Ilya	 ', '	Evdokimov	 '),
('	Semyon	 ', '	Aleksandrov	 '),
('	Andrey	 ', '	Filippov	 '),
('	Andrey	 ', '	Nikonov	 '),
('	Matvey	 ', '	Kulagin	 '),
('	Anatoliy	 ', '	Drozdov	 '),
('	Stepan	 ', '	Gulyaev	 '),
('	Pyotr	 ', '	Terentev	 '),
('	Matvey	 ', '	Gushhin	 '),
('	Vladimir	 ', '	Lukin	 '),
('	Oleg	 ', '	Kirillov	 '),
('	Oleg	 ', '	Kolobov	 '),
('	Ivan	 ', '	Nesterov	 '),
('	Sergey	 ', '	Strelkov	 '),
('	Denis	 ', '	Filatov	 '),
('	Stepan	 ', '	Trofimov	 '),
('	Danila	 ', '	Grigorev	 '),
('	Evgeniy	 ', '	Rozhkov	 '),
('	Aleksey	 ', '	Zaharov	 '),
('	Ivan	 ', '	Sharov	 '),
('	Timofey	 ', '	Safonov	 '),
('	Danila	 ', '	Orehov	 '),
('	Ivan	 ', '	Tihonov	 '),
('	Boris	 ', '	Drozdov	 '),
('	Vitaliy	 ', '	Blinov	 '),
('	Ruslan	 ', '	Kuzneczov	 '),
('	Fyodor	 ', '	Nikiforov	 '),
('	Filipp	 ', '	Zuev	 '),
('	Vasiliy	 ', '	Orehov	 '),
('	Gleb	 ', '	Uvarov	 '),
('	Lev	 ', '	Sharov	 '),
('	Rostislav	 ', '	Rusakov	 '),
('	Yaroslav	 ', '	Ermakov	 '),
('	Eduard	 ', '	Dorofeev	 '),
('	Igor	 ', '	Kiselyov	 '),
('	Vyacheslav	 ', '	Antonov	 '),
('	Yuriy	 ', '	Samoylov	 '),
('	Eduard	 ', '	Kirillov	 '),
('	Innokentiy	 ', '	Lihachyov	 '),
('	Anatoliy	 ', '	Simonov	 '),
('	Matvey	 ', '	Voronov	 '),
('	Kirill	 ', '	Mishin	 '),
('	Eduard	 ', '	Yakushev	 '),
('	Vladislav	 ', '	Terentev	 '),
('	Yaroslav	 ', '	Shiryaev	 '),
('	Oleg	 ', '	Isakov	 '),
('	Andrey	 ', '	Ignatev	 '),
('	Gennadiy	 ', '	Fomichyov	 '),
('	Lev	 ', '	Kabanov	 '),
('	Nikita	 ', '	Dmitriev	 '),
('	Filipp	 ', '	Simonov	 '),
('	Timofey	 ', '	Dementev	 '),
('	Yakov	 ', '	Veselov	 '),
('	Nikita	 ', '	Suhanov	 '),
('	Anatoliy	 ', '	Dyachkov	 '),
('	Filipp	 ', '	Mironov	 '),
('	Boris	 ', '	Vorobyov	 '),
('	Gennadiy	 ', '	Shestakov	 '),
('	Ruslan	 ', '	Bogdanov	 '),
('	Ilya	 ', '	Evdokimov	 '),
('	Mihail	 ', '	Lukin	 '),
('	Vyacheslav	 ', '	Uvarov	 '),
('	Semyon	 ', '	Shubin	 '),
('	Lev	 ', '	Danilov	 '),
('	Vladimir	 ', '	Vishnyakov	 '),
('	Lev	 ', '	Ershov	 '),
('	Igor	 ', '	Zinovev	 '),
('	Innokentiy	 ', '	Savin	 '),
('	Grigoriy	 ', '	Savin	 '),
('	Denis	 ', '	Kudryavczev	 '),
('	Bogdan	 ', '	Zhuravlyov	 '),
('	Georgiy	 ', '	Kolobov	 '),
('	Aleksey	 ', '	Grishin	 '),
('	Nikolay	 ', '	Zykov	 '),
('	Gavriil	 ', '	Kryukov	 '),
('	Yaroslav	 ', '	Bobylyov	 '),
('	Bogdan	 ', '	Kostin	 '),
('	Denis	 ', '	Sidorov	 '),
('	Anton	 ', '	Larionov	 '),
('	Eduard	 ', '	Fedoseev	 '),
('	Rostislav	 ', '	Dmitriev	 '),
('	Filipp	 ', '	Gorshkov	 '),
('	Vladislav	 ', '	Nikiforov	 '),
('	Vadim	 ', '	Tarasov	 '),
('	Nikita	 ', '	Shubin	 '),
('	Pyotr	 ', '	Tihonov	 '),
('	Semyon	 ', '	Burov	 '),
('	Gleb	 ', '	Baranov	 '),
('	Aleksey	 ', '	Panov	 '),
('	Stepan	 ', '	Lukin	 '),
('	Egor	 ', '	Trofimov	 '),
('	Eduard	 ', '	Teterin	 '),
('	Vitaliy	 ', '	Efremov	 '),
('	Leonid	 ', '	Mironov	 '),
('	Anton	 ', '	Rusakov	 '),
('	Filipp	 ', '	Ignatev	 '),
('	Oleg	 ', '	Ilin	 '),
('	Andrey	 ', '	Silin	 '),
('	Leonid	 ', '	Kulakov	 '),
('	Leonid	 ', '	Grishin	 '),
('	Roman	 ', '	Krasilnikov	 '),
('	Anatoliy	 ', '	Zuev	 '),
('	Valeriy	 ', '	Kulikov	 '),
('	Valentin	 ', '	Czvetkov	 '),
('	Mihail	 ', '	Mironov	 '),
('	Sergey	 ', '	Strelkov	 '),
('	Pyotr	 ', '	Rogov	 '),
('	Anatoliy	 ', '	Egorov	 '),
('	Daniil	 ', '	Romanov	 '),
('	Filipp	 ', '	Fokin	 '),
('	Rostislav	 ', '	Bespalov	 '),
('	Nikolay	 ', '	Artemev	 '),
('	Artyom	 ', '	Ermakov	 '),
('	Aleksey	 ', '	Sazonov	 '),
('	Aleksey	 ', '	Pavlov	 '),
('	Semyon	 ', '	Kolobov	 '),
('	Sergey	 ', '	Isakov	 '),
('	Nikita	 ', '	Bobylyov	 '),
('	Pyotr	 ', '	Yakushev	 '),
('	Innokentiy	 ', '	Sidorov	 '),
('	Stanislav	 ', '	Fomichyov	 '),
('	Stepan	 ', '	Noskov	 '),
('	Roman	 ', '	Blinov	 '),
('	Oleg	 ', '	Voronczov	 '),
('	Maksim	 ', '	Zhdanov	 '),
('	Gennadiy	 ', '	Nikitin	 '),
('	Maksim	 ', '	Zhuravlyov	 '),
('	Semyon	 ', '	Fedoseev	 '),
('	Leonid	 ', '	Bobrov	 '),
('	Timur	 ', '	Petrov	 '),
('	Nikita	 ', '	Bogdanov	 '),
('	Yuriy	 ', '	Konstantinov	 '),
('	Pyotr	 ', '	Belyakov	 '),
('	Svyatoslav	 ', '	Larionov	 '),
('	Innokentiy	 ', '	Artemev	 '),
('	Gleb	 ', '	Smirnov	 '),
('	Timofey	 ', '	Filatov	 '),
('	Gennadiy	 ', '	Zykov	 '),
('	Matvey	 ', '	Voronov	 '),
('	Anatoliy	 ', '	Ivanov	 '),
('	Ruslan	 ', '	Belozyorov	 '),
('	Vitaliy	 ', '	Shhukin	 '),
('	Filipp	 ', '	Shubin	 '),
('	Nikita	 ', '	Petrov	 '),
('	Leonid	 ', '	Blohin	 '),
('	Daniil	 ', '	Makarov	 '),
('	Svyatoslav	 ', '	Odinczov	 '),
('	Stepan	 ', '	Ignatev	 '),
('	Vladislav	 ', '	Rusakov	 '),
('	Leonid	 ', '	Strelkov	 '),
('	Vladimir	 ', '	Sergeev	 '),
('	Ivan	 ', '	Nikitin	 '),
('	Ilya	 ', '	Veselov	 '),
('	Vladimir	 ', '	Egorov	 '),
('	Vladimir	 ', '	Romanov	 '),
('	Ruslan	 ', '	Kondratev	 '),
('	Timofey	 ', '	Ryabov	 '),
('	Timur	 ', '	Avdeev	 '),
('	Lev	 ', '	Nikiforov	 '),
('	Mihail	 ', '	Krasilnikov	 '),
('	Maksim	 ', '	Dorofeev	 '),
('	Eduard	 ', '	Andreev	 '),
('	Nikita	 ', '	Savin	 '),
('	Gleb	 ', '	Kulagin	 '),
('	Ilya	 ', '	Shilov	 '),
('	Evgeniy	 ', '	Subbotin	 '),
('	Maksim	 ', '	Ustinov	 '),
('	Aleksandr	 ', '	Grishin	 '),
('	Anatoliy	 ', '	Stepanov	 '),
('	Bogdan	 ', '	Drozdov	 '),
('	Vadim	 ', '	Rozhkov	 '),
('	Yakov	 ', '	Seliverstov	 '),
('	Stanislav	 ', '	Gulyaev	 '),
('	Vyacheslav	 ', '	Fadeev	 '),
('	Eduard	 ', '	Melnikov	 '),
('	Valentin	 ', '	Zhuravlyov	 '),
('	Mihail	 ', '	Hohlov	 '),
('	Nikita	 ', '	Nekrasov	 '),
('	Fyodor	 ', '	Filippov	 '),
('	Stanislav	 ', '	Ponomaryov	 '),
('	Aleksandr	 ', '	Panfilov	 '),
('	Fyodor	 ', '	Larionov	 '),
('	Matvey	 ', '	Matveev	 '),
('	Semyon	 ', '	Agafonov	 '),
('	Pavel	 ', '	Egorov	 '),
('	Leonid	 ', '	Potapov	 '),
('	Oleg	 ', '	Zuev	 '),
('	Matvey	 ', '	Merkushev	 '),
('	Filipp	 ', '	Veselov	 '),
('	Timofey	 ', '	Ermakov	 '),
('	Aleksey	 ', '	Kulikov	 '),
('	Egor	 ', '	Molchanov	 '),
('	Ivan	 ', '	Melnikov	 '),
('	Stepan	 ', '	Bragin	 '),
('	Fyodor	 ', '	Konstantinov	 '),
('	Vladimir	 ', '	Eliseev	 '),
('	Artyom	 ', '	Gushhin	 '),
('	Andrey	 ', '	Pavlov	 '),
('	Aleksandr	 ', '	Kulagin	 '),
('	Sergey	 ', '	Vorobyov	 '),
('	Rostislav	 ', '	Grigorev	 '),
('	Rostislav	 ', '	Avdeev	 '),
('	Valentin	 ', '	Myasnikov	 '),
('	Bogdan	 ', '	Mishin	 '),
('	Matvey	 ', '	Sitnikov	 '),
('	Oleg	 ', '	Pahomov	 '),
('	Sergey	 ', '	Zuev	 '),
('	Anton	 ', '	Fadeev	 '),
('	Aleksandr	 ', '	Kostin	 '),
('	Anton	 ', '	Rusakov	 '),
('	Stepan	 ', '	Kryukov	 '),
('	Igor	 ', '	Fokin	 '),
('	Igor	 ', '	Nikitin	 '),
('	Evgeniy	 ', '	Ignatev	 '),
('	Valeriy	 ', '	Safonov	 '),
('	Matvey	 ', '	Kirillov	 '),
('	Rostislav	 ', '	Vorobyov	 '),
('	Danila	 ', '	Evdokimov	 '),
('	Semyon	 ', '	Rogov	 '),
('	Gleb	 ', '	Zykov	 '),
('	Fyodor	 ', '	Odinczov	 '),
('	Oleg	 ', '	Shilov	 '),
('	Vladislav	 ', '	Borisov	 '),
('	Kirill	 ', '	Timofeev	 '),
('	Evgeniy	 ', '	Shashkov	 '),
('	Evgeniy	 ', '	Gordeev	 '),
('	Yaroslav	 ', '	Gorbachyov	 '),
('	Dmitriy	 ', '	Dementev	 '),
('	Gennadiy	 ', '	Andreev	 '),
('	Matvey	 ', '	Kolobov	 '),
('	Daniil	 ', '	Romanov	 '),
('	Leonid	 ', '	Nekrasov	 '),
('	Viktor	 ', '	Yudin	 '),
('	Daniil	 ', '	Shherbakov	 '),
('	Arkadiy	 ', '	Evdokimov	 '),
('	Eduard	 ', '	Nikitin	 '),
('	Arkadiy	 ', '	Dorofeev	 '),
('	Timur	 ', '	Fedotov	 '),
('	Bogdan	 ', '	Sazonov	 '),
('	Semyon	 ', '	Grishin	 '),
('	Dmitriy	 ', '	Uvarov	 '),
('	Vyacheslav	 ', '	Nesterov	 '),
('	Gleb	 ', '	Kondratev	 '),
('	Eduard	 ', '	Ponomaryov	 '),
('	Roman	 ', '	Yudin	 '),
('	Pavel	 ', '	Kovalyov	 '),
('	Timur	 ', '	Belyakov	 '),
('	Andrey	 ', '	Rybakov	 '),
('	Aleksandr	 ', '	Melnikov	 '),
('	Gleb	 ', '	Moiseev	 '),
('	Gavriil	 ', '	Alekseev	 '),
('	Sergey	 ', '	Sysoev	 '),
('	Vyacheslav	 ', '	Knyazev	 '),
('	Fyodor	 ', '	Grigorev	 '),
('	Gleb	 ', '	Evseev	 '),
('	Egor	 ', '	Dmitriev	 '),
('	Aleksey	 ', '	Vladimirov	 '),
('	Pavel	 ', '	Kondratev	 '),
('	Matvey	 ', '	Davydov	 '),
('	Timur	 ', '	Sobolev	 '),
('	Nikita	 ', '	Vladimirov	 '),
('	Dmitriy	 ', '	Orehov	 '),
('	Eduard	 ', '	Potapov	 '),
('	Fyodor	 ', '	Kolobov	 '),
('	Vladislav	 ', '	Haritonov	 '),
('	Valeriy	 ', '	Ershov	 '),
('	Anatoliy	 ', '	Fadeev	 '),
('	Fyodor	 ', '	Afanasev	 '),
('	Vadim	 ', '	Kulagin	 '),
('	Artyom	 ', '	Kulakov	 '),
('	Fyodor	 ', '	Dyachkov	 '),
('	Yakov	 ', '	Filatov	 '),
('	Gavriil	 ', '	Voronov	 '),
('	Nikolay	 ', '	Burov	 '),
('	Timur	 ', '	Ignatov	 '),
('	Aleksandr	 ', '	Krylov	 '),
('	Artyom	 ', '	Kalashnikov	 '),
('	Lev	 ', '	Bragin	 '),
('	Bogdan	 ', '	Antonov	 '),
('	Artyom	 ', '	Bolshakov	 '),
('	Stanislav	 ', '	Nikonov	 '),
('	Ivan	 ', '	Matveev	 '),
('	Fyodor	 ', '	Rozhkov	 '),
('	Georgiy	 ', '	Noskov	 '),
('	Lev	 ', '	Sorokin	 '),
('	Arkadiy	 ', '	Anisimov	 '),
('	Filipp	 ', '	Timofeev	 '),
('	Gennadiy	 ', '	Kostin	 '),
('	Viktor	 ', '	Potapov	 '),
('	Valeriy	 ', '	Turov	 '),
('	Vladislav	 ', '	Sorokin	 '),
('	Bogdan	 ', '	Trofimov	 '),
('	Leonid	 ', '	Kazakov	 ');





INSERT INTO Jobs VALUES (301,'mechanic');
INSERT INTO Jobs VALUES (302,'passegener cargo assistant');
INSERT INTO Jobs VALUES (303,'navigator');
INSERT INTO Jobs VALUES (304,'sailor');


ALTER TABLE SHIP ADD CONSTRAINT  ship_fk0  FOREIGN KEY ( captain_id ) REFERENCES  captains ( captain_id );

ALTER TABLE  ship  ADD CONSTRAINT  ship_fk1  FOREIGN KEY ( owners_id ) REFERENCES  owners ( owners_id );

ALTER TABLE  ROUTE_LIST  ADD CONSTRAINT  ROUTE_LIST_fk0  FOREIGN KEY ( ship_id ) REFERENCES  ship ( ship_id );

ALTER TABLE  ROUTE_LIST  ADD CONSTRAINT  ROUTE_LIST_fk1  FOREIGN KEY ( route_id ) REFERENCES  Route ( route_id );

ALTER TABLE  Ports  ADD CONSTRAINT  Ports_fk0  FOREIGN KEY ( city_id ) REFERENCES  City ( city_id );

ALTER TABLE  Route  ADD CONSTRAINT  Route_fk0  FOREIGN KEY ( departure_port_code ) REFERENCES  ports ( port_id );

ALTER TABLE  Route  ADD CONSTRAINT  Route_fk1  FOREIGN KEY ( arrival_port_code ) REFERENCES  ports ( port_id );

ALTER TABLE  employee  ADD CONSTRAINT  employee_fk0  FOREIGN KEY ( ship_id ) REFERENCES  ship ( ship_id );

ALTER TABLE  employee  ADD CONSTRAINT  employee_fk1  FOREIGN KEY ( job_id ) REFERENCES  Jobs ( job_id );

ALTER TABLE  Goods  ADD CONSTRAINT  Goods_fk0  FOREIGN KEY ( customer_id ) REFERENCES  Customers_goods ( customer_id );

ALTER TABLE  Goods  ADD CONSTRAINT  Goods_fk1  FOREIGN KEY ( sheet_number ) REFERENCES  ROUTE_LIST ( sheet_number );



