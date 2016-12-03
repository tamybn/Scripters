create database BDEVENT;
use BDEVENT;

create table Users(
cod_user int(4) not null AUTO_INCREMENT,
user_name varchar(50),
password varchar(4),
last_name varchar(50),
email varchar(50),
 primary key(cod_user) 
);

create table Profiles(
cod_profile char(4) primary key,
cod_user int(4),
last_name varchar(50),
tel_num varchar(9),
constraint fk_pu foreign key(cod_user) references Users(cod_user) 
);

create table Seats(
cod_seat char(4) primary key,
num_seat varchar(50),
row_seat varchar(50),
sta_seat char(1)
);

create table Event_Types(
cod_typ_event char(4) primary key,
des_event varchar(50)
);

create table Events(
cod_event char(4) primary key,
cod_typ_event char(4),
cod_seat char(4),
date_event date,
dir_event varchar(50),
des_event varchar(50),
constraint fk_eet foreign key(cod_typ_event) references Event_Types(cod_typ_event),
constraint fk_es foreign key(cod_seat) references Seats(cod_seat)
);

create table Reservations(
cod_reser char(4) primary key,
cod_event char(4),
cod_seat char(4),
cod_user int(4),
date_reser date,
constraint fk_re foreign key(cod_event) references Events(cod_event),
constraint fk_rs foreign key(cod_seat) references Seats(cod_seat),
constraint fk_ru foreign key(cod_user) references Users(cod_user)
);

/* insertando valores a la tabla Users */
INSERT INTO `Users` VALUES (null,'migue123','1234','Arellam','juancito@gmail.com');
INSERT INTO `Users` VALUES (null,'pedrito16','2556','Lopez','pedro@gmail.com');
INSERT INTO `Users` VALUES (null,'sam2013','1112','Torres','sam@gmail.com');

/* insertando valores a la tabla Profiles */
INSERT INTO `Profiles` VALUES ('P001',1,'Arellan','998562447');
INSERT INTO `Profiles` VALUES ('P002',2,'Lopez','995234876');
INSERT INTO `Profiles` VALUES ('P003',3,'Padilla','972563485');

/* insertando valores a la tabla Event_Types */
INSERT INTO `Event_Types` VALUES ('D001','Feliz Año nuevo');
INSERT INTO `Event_Types` VALUES ('D002','Feliz cumpelaños');
INSERT INTO `Event_Types` VALUES ('D003','Feliz navidad');

/* insertando valores a la tabla Seats */
insert into Seats values ('S001','1','A','O');
insert into Seats values ('S002','2','A','O');
insert into Seats values ('S003','3','A','O');
insert into Seats values ('S004','4','A','D');
insert into Seats values ('S005','5','A','D');
insert into Seats values ('S006','6','A','D');
insert into Seats values ('S007','7','A','D');
insert into Seats values ('S008','8','A','D');
insert into Seats values ('S009','9','A','D');
insert into Seats values ('S010','10','A','D');
insert into Seats values ('S011','11','A','D');
insert into Seats values ('S012','12','A','D');
insert into Seats values ('S013','13','A','D');
insert into Seats values ('S014','14','A','D');
insert into Seats values ('S015','15','A','D');
insert into Seats values ('S016','16','A','D');
insert into Seats values ('S017','17','A','D');
insert into Seats values ('S018','18','A','D');
insert into Seats values ('S019','19','A','D');
insert into Seats values ('S020','20','A','D');

insert into Seats values ('S021','1','B','D');
insert into Seats values ('S022','2','B','D');
insert into Seats values ('S023','3','B','D');
insert into Seats values ('S024','4','B','D');
insert into Seats values ('S025','5','B','D');
insert into Seats values ('S026','6','B','D');
insert into Seats values ('S027','7','B','D');
insert into Seats values ('S028','8','B','D');
insert into Seats values ('S029','9','B','D');
insert into Seats values ('S030','10','B','D');
insert into Seats values ('S031','11','B','D');
insert into Seats values ('S032','12','B','D');
insert into Seats values ('S033','13','B','D');
insert into Seats values ('S034','14','B','D');
insert into Seats values ('S035','15','B','D');
insert into Seats values ('S036','16','B','D');
insert into Seats values ('S037','17','B','D');
insert into Seats values ('S038','18','B','D');
insert into Seats values ('S039','19','B','D');
insert into Seats values ('S040','20','B','D');


insert into Seats values ('S041','1','C','D');
insert into Seats values ('S042','2','C','D');
insert into Seats values ('S043','3','C','D');
insert into Seats values ('S044','4','C','D');
insert into Seats values ('S045','5','C','D');
insert into Seats values ('S046','6','C','D');
insert into Seats values ('S047','7','C','D');
insert into Seats values ('S048','8','C','D');
insert into Seats values ('S049','9','C','D');
insert into Seats values ('S050','10','C','D');
insert into Seats values ('S051','11','C','D');
insert into Seats values ('S052','12','C','D');
insert into Seats values ('S053','13','C','D');
insert into Seats values ('S054','14','C','D');
insert into Seats values ('S055','15','C','D');
insert into Seats values ('S056','16','C','D');
insert into Seats values ('S057','17','C','D');
insert into Seats values ('S058','18','C','D');
insert into Seats values ('S059','19','C','D');
insert into Seats values ('S060','20','C','D');

insert into Seats values ('S061','1','D','D');
insert into Seats values ('S062','2','D','D');
insert into Seats values ('S063','3','D','D');
insert into Seats values ('S064','4','D','D');
insert into Seats values ('S065','5','D','D');
insert into Seats values ('S066','6','D','D');
insert into Seats values ('S067','7','D','D');
insert into Seats values ('S068','8','D','D');
insert into Seats values ('S069','9','D','D');
insert into Seats values ('S070','10','D','D');
insert into Seats values ('S071','11','D','D');
insert into Seats values ('S072','12','D','D');
insert into Seats values ('S073','13','D','D');
insert into Seats values ('S074','14','D','D');
insert into Seats values ('S075','15','D','D');
insert into Seats values ('S076','16','D','D');
insert into Seats values ('S077','17','D','D');
insert into Seats values ('S078','18','D','D');
insert into Seats values ('S079','19','D','D');
insert into Seats values ('S080','20','D','D');

insert into Seats values ('S081','1','E','D');
insert into Seats values ('S082','2','E','D');
insert into Seats values ('S083','3','E','D');
insert into Seats values ('S084','4','E','D');
insert into Seats values ('S085','5','E','D');
insert into Seats values ('S086','6','E','D');
insert into Seats values ('S087','7','E','D');
insert into Seats values ('S088','8','E','D');
insert into Seats values ('S089','9','E','D');
insert into Seats values ('S090','10','E','D');
insert into Seats values ('S091','11','E','D');
insert into Seats values ('S092','12','E','D');
insert into Seats values ('S093','13','E','D');
insert into Seats values ('S094','14','E','D');
insert into Seats values ('S095','15','E','D');
insert into Seats values ('S096','16','E','D');
insert into Seats values ('S097','17','E','D');
insert into Seats values ('S098','18','E','D');
insert into Seats values ('S099','19','E','D');
insert into Seats values ('S100','20','E','D');

insert into Seats values ('S101','1','F','D');
insert into Seats values ('S102','2','F','D');
insert into Seats values ('S103','3','F','D');
insert into Seats values ('S104','4','F','D');
insert into Seats values ('S105','5','F','D');
insert into Seats values ('S106','6','F','D');
insert into Seats values ('S107','7','F','D');
insert into Seats values ('S108','8','F','D');
insert into Seats values ('S109','9','F','D');
insert into Seats values ('S110','10','F','D');
insert into Seats values ('S111','11','F','D');
insert into Seats values ('S112','12','F','D');
insert into Seats values ('S113','13','F','D');
insert into Seats values ('S114','14','F','D');
insert into Seats values ('S115','15','F','D');
insert into Seats values ('S116','16','F','D');
insert into Seats values ('S117','17','F','D');
insert into Seats values ('S118','18','F','D');
insert into Seats values ('S119','19','F','D');
insert into Seats values ('S120','20','F','D');

insert into Seats values ('S121','1','G','D');
insert into Seats values ('S122','2','G','D');
insert into Seats values ('S123','3','G','D');
insert into Seats values ('S124','4','G','D');
insert into Seats values ('S125','5','G','D');
insert into Seats values ('S126','6','G','D');
insert into Seats values ('S127','7','G','D');
insert into Seats values ('S128','8','G','D');
insert into Seats values ('S129','9','G','D');
insert into Seats values ('S130','10','G','D');
insert into Seats values ('S131','11','G','D');
insert into Seats values ('S132','12','G','D');
insert into Seats values ('S133','13','G','D');
insert into Seats values ('S134','14','G','D');
insert into Seats values ('S135','15','G','D');
insert into Seats values ('S136','16','G','D');
insert into Seats values ('S137','17','G','D');
insert into Seats values ('S138','18','G','D');
insert into Seats values ('S139','19','G','D');
insert into Seats values ('S140','20','G','D');

/* insertando valores a la tabla Events */
INSERT INTO `Events` VALUES ('E001','D001','S001','2016-10-28','jr.beleguia123','ROck');
INSERT INTO `Events` VALUES ('E002','D002','S002','2016-10-29','jr.guzman 432','POP');
INSERT INTO `Events` VALUES ('E003','D003','S003','2016-10-30','jr.las flores 231','Cumbia');

/* insertando valores a la tabla Reservations*/
INSERT INTO `Reservations` VALUES ('R001','E001','S001',1,'2016-11-17');
INSERT INTO `Reservations` VALUES ('R002','E002','S002',2,'2016-11-20');
INSERT INTO `Reservations` VALUES ('R003','E003','S003',3,'2016-11-25');

/* Haciendo consultas*/
select *from Users;
select *from Profiles;
select *from Seats;
select *from Event_Types;
select *from Events;
select *from Reservations;
