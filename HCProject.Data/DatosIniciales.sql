/****** Script de iniciaci�n de datos para HCProjectDB  ******/
/****** Elaborado por: Nelson Alejandro Saz Rivera  ******/

USE HCProjectDB;
BEGIN TRANSACTION;

-- Paises
SET IDENTITY_INSERT Paises ON;
INSERT INTO Paises(Id,Nombre,CodigoIso,CodigoTelefono) VALUES (1,'El Salvador','SV','503');
INSERT INTO Paises(Id,Nombre,CodigoIso,CodigoTelefono) VALUES (2,'Guatemala','GT','502');
INSERT INTO Paises(Id,Nombre,CodigoIso,CodigoTelefono) VALUES (3,'Honduras','HN','504');
INSERT INTO Paises(Id,Nombre,CodigoIso,CodigoTelefono) VALUES (4,'Nicaragua','NI','505');
INSERT INTO Paises(Id,Nombre,CodigoIso,CodigoTelefono) VALUES (5,'Costa Rica','CR','506');
SET IDENTITY_INSERT Paises OFF;

-- Departamentos
SET IDENTITY_INSERT Departamentos ON;
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (1,'Ahuachap�n',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (2,'Santa Ana',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (3,'Sonsonate',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (4,'La Libertad',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (5,'Chalatenango',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (6,'San Salvador',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (7,'Cuscatl�n',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (8,'La Paz',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (9,'Caba�as',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (10,'San Vicente',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (11,'Usulut�n',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (12,'Moraz�n',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (13,'San Miguel',1);
INSERT INTO Departamentos(Id,Nombre,PaisId) VALUES (14,'La Uni�n',1);
SET IDENTITY_INSERT Departamentos OFF;

-- Municipios
SET IDENTITY_INSERT Municipios ON
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (1,'Ahuachap�n',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (2,'San Ildefonso',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (3,'San Lorenzo',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (4,'San Sebasti�n',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (5,'San Vicente',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (6,'Santa Clara',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (7,'Santo Domingo',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (8,'Tecoluca',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (9,'Tepetit�n',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (10,'Verapaz',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (11,'Alegr�a',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (12,'Berl�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (13,'California',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (14,'Concepci�n Batres',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (15,'San Esteban Catarina',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (16,'El Triunfo',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (17,'Estanzuelas',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (18,'Jiquilisco',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (19,'Jucuapa',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (20,'Jucuar�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (21,'Mercedes Uma�a',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (22,'Nueva Granada',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (23,'Ozatl�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (24,'Puerto El Triunfo',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (25,'San Agust�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (26,'San Buenaventura',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (27,'San Dionisio',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (28,'San Francisco Javier',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (29,'Santa Elena',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (30,'Ereguayqu�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (31,'San Cayetano Istepeque',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (32,'Guadalupe',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (33,'Apastepeque',10);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (34,'El Rosario (La Paz)',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (35,'Jerusal�n',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (36,'Mercedes La Ceiba',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (37,'Olocuilta',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (38,'Para�so de Osorio',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (39,'San Antonio Masahuat',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (40,'San Emigdio',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (41,'San Francisco Chinameca',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (42,'San Pedro Masahuat',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (43,'San Juan Nonualco',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (44,'San Juan Talpa',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (45,'San Juan Tepezontes',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (46,'San Luis La Herradura',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (47,'San Luis Talpa',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (48,'San Miguel Tepezontes',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (49,'San Pedro Nonualco',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (50,'San Rafael Obrajuelo',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (51,'Santa Mar�a Ostuma',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (52,'Santiago Nonualco',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (53,'Tapalhuaca',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (54,'Cinquera',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (55,'Dolores',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (56,'Guacotecti',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (57,'Ilobasco',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (58,'Jutiapa',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (59,'San Isidro (Caba�as)',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (60,'Sensuntepeque',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (61,'Tejutepeque',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (62,'Victoria',9);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (63,'Santa Mar�a',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (64,'Santiago de Mar�a',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (65,'Tecap�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (66,'Usulut�n',11);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (67,'Lolotique',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (68,'Moncagua',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (69,'Nueva Guadalupe',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (70,'Nuevo Ed�n de San Juan',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (71,'Quelepa',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (72,'San Antonio del Mosco',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (73,'San Gerardo',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (74,'San Jorge',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (75,'San Luis de la Reina',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (76,'San Miguel',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (77,'San Rafael Oriente',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (78,'Sesori',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (79,'Uluazapa',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (80,'La Uni�n',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (81,'San Alejo',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (82,'Yucuaiqu�n',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (83,'Conchagua',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (84,'Intipuc�',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (85,'San Jos�',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (86,'El Carmen (La Uni�n)',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (87,'Yayantique',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (88,'Bol�var',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (89,'Meanguera del Golfo',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (90,'Santa Rosa de Lima',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (91,'Pasaquina',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (92,'Anamoros',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (93,'Nueva Esparta',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (94,'El Sauce',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (95,'Concepci�n de Oriente',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (96,'El Tr�nsito',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (97,'Cuyultit�n',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (98,'Comacar�n',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (99,'Chirilagua',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (100,'Arambala',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (101,'Cacaopera',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (102,'Chilanga',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (103,'Corinto',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (104,'Delicias de Concepci�n',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (105,'El Divisadero',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (106,'El Rosario (Moraz�n)',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (107,'Gualococti',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (108,'Guatajiagua',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (109,'Joateca',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (110,'Jocoaitique',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (111,'Jocoro',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (112,'Lolotiquillo',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (113,'Meanguera',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (114,'Osicala',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (115,'Perqu�n',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (116,'San Carlos',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (117,'San Fernando (Moraz�n)',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (118,'San Francisco Gotera',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (119,'San Isidro (Moraz�n)',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (120,'San Sim�n',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (121,'Sensembra',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (122,'Sociedad',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (123,'Torola',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (124,'Yamabal',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (125,'Yoloaiqu�n',12);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (126,'Carolina',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (127,'Chapeltique',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (128,'Chinameca',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (129,'Ciudad Barrios',13);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (130,'Polor�s',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (131,'Zacatecoluca',8);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (132,'Suchitoto',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (133,'San Antonio del Monte',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (134,'San Juli�n',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (135,'Santa Catarina Masahuat',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (136,'Santa Isabel Ishuat�n',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (137,'Santo Domingo de Guzm�n',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (138,'Sonsonate',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (139,'Sonzacate',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (140,'Antiguo Cuscatl�n',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (141,'Ciudad Arce',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (142,'Col�n',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (143,'Comasagua',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (144,'Huiz�car',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (145,'Jayaque',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (146,'Salcoatit�n',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (147,'Jicalapa',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (148,'Santa Tecla',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (149,'Nuevo Cuscatl�n',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (150,'San Juan Opico',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (151,'Quezaltepeque',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (152,'Sacacoyo',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (153,'San Jos� Villanueva',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (154,'San Mat�as',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (155,'San Pablo Tacachico',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (156,'Talnique',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (157,'Tamanique',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (158,'Teotepeque',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (159,'Tepecoyo',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (160,'Zaragoza',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (161,'La Libertad',4);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (162,'Nahulingo',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (163,'Nahuizalco',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (164,'Juay�a',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (165,'Jujutla',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (166,'Atiquizaya',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (167,'Concepci�n de Ataco',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (168,'El Refugio',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (169,'Guaymango',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (170,'Apaneca',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (171,'San Francisco Men�ndez',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (172,'San Lorenzo',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (173,'San Pedro Puxtla',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (174,'Tacuba',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (175,'Tur�n',1);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (176,'Candelaria de la Frontera',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (177,'Chalchuapa',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (178,'Coatepeque',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (179,'El Congo',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (180,'El Porvenir',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (181,'Masahuat',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (182,'Metap�n',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (183,'San Antonio Pajonal',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (184,'San Sebasti�n Salitrillo',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (185,'Santa Ana',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (186,'Santa Rosa Guachipil�n',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (187,'Santiago de la Frontera',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (188,'Texistepeque',2);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (189,'Acajutla',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (190,'Armenia',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (191,'Caluco',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (192,'Cuisnahuat',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (193,'Izalco',3);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (194,'Agua Caliente',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (195,'Arcatao',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (196,'Azacualpa',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (197,'Cancasque',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (198,'Ciudad Delgado',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (199,'El Paisnal',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (200,'Guazapa',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (201,'Ilopango',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (202,'Mejicanos',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (203,'Nejapa',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (204,'Panchimalco',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (205,'Rosario de Mora',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (206,'San Marcos',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (207,'San Mart�n',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (208,'San Salvador',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (209,'Santiago Texacuangos',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (210,'Santo Tom�s',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (211,'Soyapango',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (212,'Tonacatepeque',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (213,'Cojutepeque',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (214,'Candelaria',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (215,'El Carmen (Cuscatl�n)',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (216,'El Rosario (Cuscatl�n)',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (217,'Monte San Juan',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (218,'Oratorio de Concepci�n',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (219,'San Bartolom� Perulap�a',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (220,'San Crist�bal',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (221,'San Jos� Guayabal',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (222,'San Pedro Perulap�n',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (223,'San Rafael Cedros',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (224,'San Ram�n',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (225,'Santa Cruz Analquito',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (226,'Santa Cruz Michapa',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (227,'Cuscatancingo',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (228,'Tenancingo',7);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (229,'Ayutuxtepeque',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (230,'Aguilares',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (231,'Chalatenango',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (232,'Cital�',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (233,'Comapala',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (234,'Concepci�n Quezaltepeque',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (235,'Dulce Nombre de Mar�a',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (236,'El Carrizal',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (237,'El Para�so',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (238,'La Laguna',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (239,'La Palma',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (240,'La Reina',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (241,'Las Vueltas',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (242,'Nueva Concepci�n',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (243,'Nueva Trinidad',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (244,'Nombre de Jes�s',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (245,'Ojos de Agua',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (246,'Potonico',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (247,'San Antonio de la Cruz',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (248,'San Antonio Los Ranchos',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (249,'San Fernando (Chalatenango)',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (250,'San Francisco Lempa',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (251,'San Francisco Moraz�n',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (252,'San Ignacio',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (253,'San Isidro Labrador',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (254,'Las Flores',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (255,'San Luis del Carmen',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (256,'San Miguel de Mercedes',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (257,'San Rafael',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (258,'Santa Rita',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (259,'Tejutla',5);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (260,'Apopa',6);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (261,'Lislique',14);
INSERT INTO Municipios(Id,Nombre,DepartamentoId) VALUES (262,'Chiltiup�n',4);
SET IDENTITY_INSERT Municipios OFF

-- Generos
SET IDENTITY_INSERT Generos ON
INSERT INTO Generos(Id,Codigo,Nombre) VALUES (1,'X','Prefiero no decir');
INSERT INTO Generos(Id,Codigo,Nombre) VALUES (2,'F','Femenino');
INSERT INTO Generos(Id,Codigo,Nombre) VALUES (3,'M','Masculino');
SET IDENTITY_INSERT Generos OFF

COMMIT TRANSACTION;