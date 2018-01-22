alter table autor
	add primary key(AutorID);

alter table autor
	modify A_Name char(20),
    modify AutorID integer not null  auto_increment;



alter table buch
	add column VerlagID integer,
    add foreign key(VerlagID) references `verlag`(VerlagID);

