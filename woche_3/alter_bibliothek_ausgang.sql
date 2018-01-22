-- 
-- Tabellenstruktur für Tabelle `autor`
-- 

DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `AutorID` int(11) NOT NULL,
  `A_Name` varchar(20) default NULL,
  `A_Vorname` char(20) default NULL
  ) TYPE=MyISAM ;

-- 
-- Tabellenstruktur für Tabelle `buch`
-- 

DROP TABLE IF EXISTS `buch`;
CREATE TABLE IF NOT EXISTS `buch` (
  `Buch_Nr` int(11) NOT NULL auto_increment,
  `Titel` char(20) default NULL,
  `Erscheinungsjahr` char(20) default NULL,
  `Auflage` char(20) default NULL,
  `StandortNr` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Buch_Nr`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Tabellenstruktur für Tabelle `kunde`
-- 

DROP TABLE IF EXISTS `kunde`;
CREATE TABLE IF NOT EXISTS `kunde` (
  `KundeNr` int(11) NOT NULL auto_increment,
  `Name` char(20) NOT NULL default '',
  `Vorname` char(20) default NULL,
  PRIMARY KEY  (`KundeNr`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Tabellenstruktur für Tabelle `standort`
-- 

DROP TABLE IF EXISTS `standort`;
CREATE TABLE IF NOT EXISTS `standort` (
  `StandortNr` int(11) NOT NULL auto_increment,
  `Gebaeude` char(20) default NULL,
  PRIMARY KEY  (`StandortNr`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Tabellenstruktur für Tabelle `verlag`
-- 

DROP TABLE IF EXISTS `verlag`;
CREATE TABLE IF NOT EXISTS `verlag` (
  `VerlagID` int(11) NOT NULL auto_increment,
  `Verlag_Name` char(20) NOT NULL default '',
  PRIMARY KEY  (`VerlagID`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `Verfasst_von`;
CREATE TABLE IF NOT EXISTS `Verfasst_von`(
id integer
);


DROP TABLE IF EXISTS `Entliehen_von`;
CREATE TABLE IF NOT EXISTS `Entliehen_von`(
  id integer
);




-- ToDo --
-- Tabelle autor:
	-- Primary Key für tabelle 'autor' auf das feld AutorID 
	-- AName von varchar(20) auf char(20) ändern
	-- AutorID als AUTO_INCREMENT
	
-- Tabelle Buch: 
 	-- verlagID hinzufügen (als Fremdschlüssel)
	-- Erscheinungsjahr auf Datentyp YEAR ändern

-- Tabelle Verlag:
	-- UNIQUE KEY auf Verlag_Name hinzufügen 

-- Sonstiges:
   -- Spalten aller Zwischentabellen anlegen
   -- ID-Spalte aller Zwischentabellen löschen


