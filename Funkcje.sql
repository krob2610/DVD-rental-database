create function dbo.FilmyWJezyku(@jezyk varchar(255))
returns @tab table(tyty³ varchar(255)) 
as begin
insert into @tab 
select Tytu³ 
from Film f
join Jezyk j 
on f.JezykID = j.JezykID
where j.Nazwa=@jezyk
return 
end

go

create function dbo.FilmyWRoku(@rok int)
returns @tab table(tyty³ varchar(255)) 
as begin
insert into @tab 
select Tytu³ 
from Film 
where RokPremiry=@rok
return 
end

go

create function dbo.DanePracownika(@id int)
returns @tab table(Imie varchar(255), Nazwisko varchar(255), Miasto_Nazwa varchar(255))
as begin
insert into @tab
select Imie, Nazwisko, m.Nazwa
From Pracownicy p
join Wypozyczalnia w
on p.WypozyczalniaID = w.WypozyczalniaID
join Miasto m 
on w.MiastoID = m.MiastoID
where PracownikID = @id
return
end

go

create function dbo.FilmyWGatunku(@gatunek varchar(255))
returns @tab table(tyty³ varchar(255)) 
as begin
insert into @tab 
select Tytu³ 
from Film f
join gatunek g 
on f.GatunekID = g.GatunekID
where g.GatunekNazwa=@gatunek
return 
end

go