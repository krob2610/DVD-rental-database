
CREATE PROCEDURE NajwiecejWypozyczen 
AS
SELECT COUNT([KlientID])
FROM dbo.TransakcjeWypozyczenia 
WHERE COUNT([KlientID]) = MAX(COUNT([KlientID]))
Go



CREATE PROCEDURE IleWypozyczen 
AS
Select K.Imie, K.Nazwisko, COUNT(t.KlientID) as ilerazy
from TransakcjeWypozyczenia t
join Klient K 
on K.KlientID = t.KlientID
group by t.KlientID, K.Imie, K.Nazwisko
order by ilerazy DESC
go



create procedure dbo.DodajWypozyczenie(@KlientID int, @PracownikID int, @DataWypozyczenia date, @FilmID int, @DataZwrotu date)
as
declare @m int = (select max(TransakcjeID)+1 from TransakcjeWypozyczenia)
insert into TransakcjeWypozyczenia values
    (@m, @KlientID, @PracownikID, @DataWypozyczenia)
insert into DetaleWypozyczenia values
    (@m, @FilmID, @DataZwrotu)
go


create procedure dbo.DodajFilm(@GatunekID int, @Tytul varchar(256), @JezykID int, @Dlugosc time(7), @RokPremiery int, @Cena nvarchar(1))
as

declare @m int = (select max(FilmID)+1 from Film)
insert into Film values
    (@m, @GatunekID, @Tytul, @JezykID, @Dlugosc, @RokPremiery, @Cena)
go


create procedure dbo.PracownikMiesiaca(@miesiac int, @rok int)
    as
    declare @idPracownika int = 
    (select top 1 pracownikID ile from TransakcjeWypozyczenia
     where month(DataWypozyczenia)=@miesiac and year(DataWypozyczenia)=@rok
     group by pracownikID
     order by count(*) desc)

    select imie, nazwisko from Pracownicy where PracownikID=@idPracownika

go
