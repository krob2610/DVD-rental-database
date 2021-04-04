
create trigger dbo.CzyDataJestWlasciwa on DetaleWypozyczenia
    after insert as begin

    declare @x int
    set @x = (select count(*) from TransakcjeWypozyczenia tw
    join inserted i
    on tw.TransakcjeID = i.TransakcjeID
    where tw.DataWypozyczenia < i.DataZwrotu)

    if @x <> 0
    begin
        print 'Jest ju¿ film o podanym tytule!'
        rollback
    end
end
Go

CREATE TRIGGER dbo.ZamiastWstawiania ON Kraj
INSTEAD OF INSERT
AS
    INSERT INTO Kraj
    SELECT * FROM INSERTED

    PRINT 'Wstawiono wiersze do tabeli Kraj.'

GO

create trigger dbo.CzyAktorJuzIstnieje on Aktor
    instead of insert as begin

    declare @x int
    set @x = (select count(*) from Aktor a
    join inserted i
    on (a.Imie = i.Imie and a.Nazwisko = i.Nazwisko)
	)
    if @x <> 0
    begin
        print 'Jest ju¿ aktor o takim imieniu i nazwisku!'
        rollback
    end
    else
    begin
        INSERT INTO Aktor
        SELECT * FROM INSERTED
    end
end


Go
CREATE TRIGGER dbo.Kara ON DetaleWypozyczenia
FOR  INSERT,  UPDATE 
AS 
DECLARE @iloscDNI INT
DECLARE @wynik  FLOAT 
DECLARE @wypozyczenie DATE
DECLARE @oddanie DATE

SELECT @wypozyczenie = (SELECT DataWypozyczenia FROM inserted i join TransakcjeWypozyczenia tw on tw.TransakcjeID=i.TransakcjeID)
SELECT @oddanie = (SELECT DataZwrotu FROM inserted)
SELECT  @iloscDNI  = DATEDIFF(DAY, @wypozyczenie, @oddanie) 
SELECT @wynik = (@iloscDNI - 14) * 1.2 
    IF (@iloscDNI > 14)
        BEGIN
        PRINT 'Do zap³aty: ' + CONVERT(varchar(100),@wynik)
        END
    ELSE
        BEGIN
        PRINT 'Film zwrócony w terminie' 
        END
GO



CREATE TRIGGER dbo.CzyFilmNieZaDlugi ON Film 
    FOR INSERT, UPDATE
    AS
        declare @x int
        set @x = (select count(*) from inserted
            where dlugosc >='5:00:00')

        if @x <> 0
        begin
            print 'Film jest za d³ugi. To pewnie pomy³ka.'
            rollback
        end
go

