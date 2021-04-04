Wyzwalacze

EXEC dbo.PracownikMiesiaca 1, 2020

EXEC dbo.DodajFilm 3, 'The Social Network', 1, '2:07:00', 2011, 'A'

EXEC dbo.DodajWypozyczenie 28, 3, '6-07-2020', 17, '10-07-2020'


Funkcje

SELECT * from dbo.FilmyWJezyku('Francuski') as ileJezykow 
SELECT * from dbo.FilmyWRoku('2001')
SELECT * from dbo.DanePracownika(7)
SELECT * from dbo.FilmyWGatunku('Komedia')

Procedury

EXEC NajwiecejWypozyczen
EXEC dbo.IleWypozyczen
EXEC dbo.PracownikMiesiaca 1, 2020
EXEC dbo.DodajFilm 3, 'The Social Network', 1, '2:07:00', 2011, 'A'
EXEC dbo.DodajWypozyczenie 28, 3, '6-07-2020', 17, '10-07-2020'

Widoki

SELECT * FROM ileFilmowWKateegoriiCenowej
SELECT * FROM WiekFilmu
SELECT * FROM DorobekRezysera
SELECT * FROM IlePracownikow
SELECT * FROM NajdluzszyFilm
SELECT * FROM NajkrotszyFilm