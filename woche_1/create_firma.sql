-- Anlegen der Datenbank
drop database if exists firma;
create database firma;


-- Verbindung zur Datenbank herstellen
use firma;

-- Abteilung
CREATE TABLE  Abteilung
(
  ID integer auto_increment primary key,  -- identifizierend
  Bezeichnung varchar(30) unique key, --eindeutig
  Nummer integer unique key
) engine=innodb;

-- innodb; 
-- "langsam", aber sicher (FK, Transaktionen)


-- myisam; schenll und unsicher
--         weil keine FK und Transaktionen




create table Angestellter(
  ID integer primary key auto_increment, -- selbst hochzählend
  Name char(20) not null,
  Gehalt double , 
  strasse char(20),
  Geburtsdatum DateTime,
  CreationTime Timestamp,    -- Wert wird automatisch gefüllt
  fk_Abteilung integer,
  foreign key(fk_Abteilung) references Abteilung(ID)
) engine = innodb;






