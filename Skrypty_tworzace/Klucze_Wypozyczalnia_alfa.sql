Alter table Film
ADD primary key (FilmID);

Alter Table Jezyk 
Add primary key (JezykID);
Alter Table Rezerwacje 
Add primary key (RezerwacjeID);
Alter Table Pracownicy 
Add primary key (PracownikID);
Alter Table TransakcjeWypozyczenia
Add primary key(TransakcjeID)


alter table Miasto add primary key(MiastoID)
alter table Klient add primary key(KlientID)
alter table KategoriaCenowa add primary key(Kategoria)

alter table DetaleWypozyczenia add primary key(TransakcjeID)
alter table Kraj add primary key(KrajID)
alter table Wypozyczalnia add primary key(WypozyczalniaID)
alter table Rezyser add primary key(RezyserID)
alter table Inwentarz add primary key(InwentarzID)
alter table Aktor add primary key(AktorId)