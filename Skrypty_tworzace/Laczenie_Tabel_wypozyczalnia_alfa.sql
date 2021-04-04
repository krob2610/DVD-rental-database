Alter table Film 
ADD Foreign Key (GatunekID) References Gatunek(GatunekID)

Alter table AktorFilm
ADD Foreign Key (FilmID) References Film(FilmID)

Alter table AktorFilm
ADD Foreign Key (AktorID) References Aktor(AktorID)

Alter table RezyserFilm
ADD Foreign Key (FilmID) References Film(FilmID)

Alter table RezyserFilm
ADD Foreign Key (RezyserID) References Rezyser(RezyserID)


Alter table Film 
ADD Foreign Key (JezykID) References Jezyk(JezykID)

Alter Table Transakcjewypozyczenia
ADD foreign key (PracownikID) References Pracownicy(PracownikID)

alter table Film 
add foreign key(Cena) references KategoriaCenowa(Kategoria)

Alter table Rezyser
ADD Foreign Key (FilmID) References Film(FilmID)

Alter Table DetaleWypozyczenia
ADD foreign key (TransakcjeID) References Transakcjewypozyczenia(TransakcjeID)


Alter Table Transakcjewypozyczenia
ADD foreign key (KlientID) References Klient(KlientID)

Alter table Wypozyczalnia 
Add foreign key (MiastoID) references Miasto(MiastoID)

Alter table Miasto 
Add foreign key (KrajID) references Kraj(KrajID)
 
alter table Inwentarz 
add foreign key (FilmID) references Film(FilmID)
alter table Inwentarz 
add foreign key (wypozyczalniaID) references Wypozyczalnia(WypozyczalniaID)

alter table Rezerwacje add foreign key (KlientID) references Klient(KlientID)
alter table Rezerwacje add foreign key (FilmID) references Film(FilmID)

alter table Pracownicy add foreign key (WypozyczalniaID) references Wypozyczalnia(WypozyczalniaID)

alter table Aktor add foreign key (AktorID) references Person(PersonID)