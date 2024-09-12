-- tabeli loomine reiside jaoks

use reisimine;
create table reis (
	reisId INT,
	sihtkoht VARCHAR(50),
	alguskoht VARCHAR(50),
	kuupäev DATE,
	pardaleminekuAeg VARCHAR(50),
	hind DECIMAL(5,2),
	transport VARCHAR(6),
	reisifirma VARCHAR(50)
);

-- andmete sisestamine mockaroo.com abil

insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (1, 'Newman Airport', 'Momeik Airport', '28.10.2024', '1:07', 510.45, 'buss', 'Yakidoo');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (2, 'Sanggata/Sangkimah Airport', 'Louisville Winston County Airport', '06.10.2024', '22:28', 516.82, 'buss', 'Zoomlounge');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (3, 'Monaco Heliport', 'Viveros Island Airport', '17.11.2024', '8:35', 522.89, 'buss', 'Jayo');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (4, 'Khoram Abad Airport', 'Al Thaurah Airport', '18.10.2024', '18:39', 208.2, 'rong', 'Rhyloo');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (5, 'Marina Municipal Airport', 'Immokalee Regional Airport', '13.09.2024', '10:12', 596.3, 'buss', 'Blognation');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (6, 'Marawaka Airport', 'Porto Seguro Airport', '16.11.2024', '3:31', 528.54, 'laev', 'Vinder');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (7, 'Owensboro Daviess County Airport', 'Anuha Island Resort Airport', '21.11.2024', '15:32', 692.61, 'lennuk', 'Vipe');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (8, 'Concord Municipal Airport', 'Lackland Air Force Base', '11.09.2024', '3:16', 485.94, 'lennuk', 'Youspan');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (9, 'Aiyura Airport', 'Zielona Góra-Babimost Airport', '06.11.2024', '20:36', 596.3, 'laev', 'Tagtune');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (10, 'Leonora Airport', 'Amery Municipal Airport', '11.09.2024', '17:16', 174.76, 'laev', 'Skipstorm');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (11, 'Bushehr Airport', 'Lins Airport', '23.10.2024', '11:43', 455.97, 'laev', 'BlogXS');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (12, 'OR Tambo International Airport', 'Elliot Lake Municipal Airport', '20.11.2024', '17:32', 337.71, 'lennuk', 'Skimia');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (13, 'Beersheba (Teyman) Airport', 'Tadoule Lake Airport', '21.10.2024', '18:18', 307.23, 'laev', 'Oozz');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (14, 'Port Harcourt City Airport', 'Kannur International Airport', '27.11.2024', '17:24', 509.38, 'buss', 'Youbridge');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (15, 'Galcaio Airport', 'Emmonak Airport', '19.10.2024', '14:09', 253.65, 'buss', 'Twitterwire');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (16, 'Middlemount Airport', 'Caleta Olivia Airport', '04.11.2024', '8:20', 601.56, 'laev', 'Blogspan');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (17, 'Kengtung Airport', 'Trompeteros Airport', '06.09.2024', '11:17', 417.84, 'buss', 'Yakitri');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (18, 'Brown Field Municipal Airport', 'Boolgeeda', '21.11.2024', '10:11', 110.71, 'laev', 'Quimba');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (19, 'Westport Airport', 'Baitadi Airport', '14.11.2024', '16:52', 184.66, 'rong', 'Demimbu');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (20, 'Tweed New Haven Airport', 'Mc Connell Air Force Base', '08.10.2024', '4:18', 235.51, 'laev', 'Tekfly');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (21, 'Amgu Airport', 'San Luis Río Colorado Airport', '05.09.2024', '22:06', 371.59, 'rong', 'Tagtune');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (22, 'Enrique Malek International Airport', 'Debrecen International Airport', '25.11.2024', '1:42', 321.26, 'laev', 'Kare');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (23, 'Hunter Army Air Field', 'Gulkana Airport', '22.11.2024', '3:19', 116.19, 'lennuk', 'Edgeify');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (24, 'Lake Charles Regional Airport', 'Tamarindo Airport', '23.10.2024', '1:03', 626.39, 'lennuk', 'Fiveclub');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (25, 'Benin Airport', 'Kasos Airport', '19.09.2024', '23:10', 233.26, 'laev', 'Kayveo');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (26, 'Telegraph Creek Airport', 'Penn Valley Airport', '12.11.2024', '17:37', 294.48, 'buss', 'Geba');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (27, 'Gibb River Airport', 'Oyo Ollombo Airport', '16.10.2024', '22:50', 675.79, 'lennuk', 'Feednation');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (28, 'Lusambo Airport', 'Atizapan De Zaragoza Airport', '26.11.2024', '1:51', 584.11, 'lennuk', 'Eabox');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (29, 'Bisho Airport', 'Buin Airport', '07.11.2024', '18:11', 222.02, 'buss', 'Edgepulse');
insert into reis (reisId, sihtkoht, alguskoht, kuupäev, pardaleminekuAeg, hind, transport, reisifirma) values (30, 'Crane Island Airstrip', 'Almirante Padilla Airport', '05.10.2024', '20:10', 499.79, 'lennuk', 'Flipstorm');

-- SQL -> XML faili konverteerimine

USE reisimine;

SELECT 
    reisId AS '@id', -- määrame reisId kui XML atribuut
    sihtkoht AS 'sihtkoht',
    alguskoht AS 'alguskoht',
    kuupäev AS 'kuupäev',
    pardaleminekuAeg AS 'pardaleminekuAeg',
    hind AS 'hind',
    
    --loome alam-XML struktuuri transpordi kohta
    (SELECT 
        transport AS 'tüüp'
    FOR XML PATH('transport'), TYPE),

    (SELECT 
        reisifirma AS 'nimi'
    FOR XML PATH('firma'), TYPE)

FROM reis 
FOR XML PATH('reisid'), ROOT('reisimine');
