# Baza Danych Wypożyczalni Filmowej

#### Jakub Robak, Jakub Parapura

## Cel Projektu
Nasza baza została przygotowana aby umożliwić pewnej sieci wypożyczalni filmowych płynne zarządzanie firmą. Baza przechowuje dane o filmach oferowanych przez sieć, jej pracownikach oraz klientach wypożyczających filmy na całym świecie. Pełni rolę archiwum oraz jest zaprojektowana w taki sposób, aby ułatwić użytkownikom kontrolę zarządzaniem produktami.

## Możliwości
Baza umożliwia pracownikowi oraz klientom łatwy dostęp do wybranego filmu. Mogą oni w szybki sposób poznać szczegóły na temat konkretnego filmu takie jak jego tytuł, gatunek, język, długość, rok premiery, cenę jak i również jego reżysera. Baza umożliwia wyszukanie filmów w danym języku oraz gatunku co znacznie skraca czas wyboru pozycji filmowej przez osobę wypożyczającą. Następna część bazy dotyczy Pracowników, Klientów, placówek Wypożyczalni oraz Transakcji zawieranych z klientami. Pracownicy mogą dodawać do bazy filmów nowe pozycję oraz zapisywać dokonane Transakcje. W celu lepszego monitorowania różnorodności oferty kierownik może sprawdzić ile filmów znajduje się w danej kategorii cenowej tak aby oferowane filmy były dostępne zarówno dla "wyjadaczy filmowych" jak i "niedzielnych oglądaczy".Kierownik może również sprawdzić ile Pracowników jest w danej placówce oraz sprawdzić "Pracownika Miesiąca".

## Diagram relacji 
![](https://github.com/krob2610/DVD-rental---database/blob/main/Diagram_relacji.jpg)


## Opis widoków
IleFilmowWKategoriiCenowej - Widok umożliwia sprawdzenie ile filmów znajduje się w każdej kategorii cenowej.
WiekFilmu - Widok umożliwia zobaczenie jak stare są filmy dostępne w naszej ofercie
DorobekReżysera - Widok wyświetlający reżyserów wraz z ilości filmów które wyreżyserowali
IlePracownikow - Widok wyświetlający ile pracowników znajduje się w każdej wypożyczalni filmowej
NajdłuższyFilm - Wyświetla długość najdłuższego filmu
NajkrótszyFilm - Wyświetla długość najkrótszego filmu

## Opis funkcji
FilmyWJezyku - Funkcja zwracająca wszystkie filmy w wybranym przez użytkownika języku
FilmyWRoku - Funkcja zwracająca filmy w wybranym przez użytkownika roku
DanePracownika - Funkcja zwracająca szczegółowe dane o jakimś pracowniku
FilmyWGatunku -  Funkcja zwracająca filmy w wybranym przez użytkownika gatunku

## Opis procedur składowanych
PracownikMiesiaca - Procedura wybierająca pracownika który dokonał największą liczbę transakcji w danym miesiącu
IleWypozyczen - Procedura zwracajaca imię, nazwisko oraz liczbę wypożyczeń klientów
NajwiecejWypozyczen - Procedura zwracająca największą liczbę wypożyczeń przez jednego klienta
DodajWypożyczenie - Procedura dodająca wypożyczenie do tabeli TransakcjeWypozyczen oraz DetaleWypozyczenia
DodajFilm - Procedura umożliwiajaca dodanie nowego filmu

## Opis wyzwalaczy 
Kara – po dodaniu lub zaktualizowaniu wiersza w tabeli DetaleWypozyczenia wyświetla czy film został oddany w terminie. Jeśli nie, wyświetla karę jaką klient musi zapłacić. Kara obliczana jest na podstawie różnicy między datą oddania a terminem oddania
CzyFilmNieZaDlugi – sprawdza czy nowo dodany film nie jest dłuższy niż 5 godzin. Jeśli jest, system informuje użytkownika, że prawdopodobnie popełnił błąd podczas wpisywania informacji do tabeli
CzyAktorJuzIstnieje – sprawdza czy nowo dodany aktor nie znajduje się już w tabeli. System nie pozwala na dodanie dwóch aktorów o tym samym imieniu i nazwisku
CzyDataJestWlasciwa – sprawdza czy data oddania filmu nastąpiła później niż jego wypożyczenie
ZamiastWstawiania – wstawia wiersze do tabeli i wypisuje informujący o tym komunikat

## Dodatkowe informacje 
Skrypty tworzące bazę danych znajdują się w folderze "Skrypty_tworzace", natomiast przykładowe zapytania 
w pliku "Przykładowe_zapytania.sql"


