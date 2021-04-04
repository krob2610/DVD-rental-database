CREATE DATABASE WypozyczalniaDVD;

CREATE TABLE Film (
    FilmID int not null,
    Tytul varchar(255) not null,
	JezykID int not null,  
    Dlugosc time,
	RokPremiery int 
);


CREATE TABLE Gatunek_Filmu (
    FilmID int not null,
	GatunekID int not null
);

CREATE TABLE Gatunek (
	GatunekID int not null,
	Nazwa varchar(255)
);

CREATE TABLE JezykID (
	FilmID int not null,
	JezykID int not null
);

CREATE TABLE Jezyk (
	JezykID int not null,
	Nazwa varchar(255)
);

CREATE TABLE Aktor_Filmu (
    FilmID int not null,
	AktorID int not null
);

CREATE TABLE Aktor (
	AktorID int not null,
	Imie varchar(255),
	Nazwisko varchar(255)
);

CREATE TABLE Rezyser_Filmu (
    FilmID int not null,
	RezyserID int not null
);

CREATE TABLE Rezyser (
	RezyserID int not null,
	Imie varchar(255),
	Nazwisko varchar(255)
);

CREATE TABLE Zamowienie (
	ZamowienieID int not null,
	KlientID int not null,
	PracownikID int not null,
	ZamowienieData date
);

CREATE TABLE SzczegolyZamowienia (
	SzczegolyZamowieniaID int not null,
	ZamowienieID int not null,
	KlientID int not null,
	PracownikID int not null,
	KwotaZamowienia Money
);

CREATE TABLE Pracownicy (
	PracownikID int not null,
	Imie varchar(255),
	Nazwisko varchar(255),
	MiastoID int not null,
	WypozyczalniaID int,
	LoginPracownika varchar(255),
	HasloPracownika varchar(255)
);

CREATE TABLE Wypozyczalnia (
	WypozyczalniaID int not null,
	SzefID int,
	MiastoID int not null
);

CREATE TABLE Miasto (
	MiastoID int not null,
	Nazwa varchar(255),
	KrajID int
);

Create table Kraj(
	KrajID int not null,
	Nazwa varchar(255)
);


CREATE TABLE Klient (
	KlientID int not null,
	Imie varchar(255),
	Nazwisko varchar(255),
	MiastoID int not null,

);

