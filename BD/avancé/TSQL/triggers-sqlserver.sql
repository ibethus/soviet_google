USE [Modules]
GO

IF EXISTS(
SELECT * FROM sys.triggers
WHERE name = N'UPD_ETU_ramet'
)
DROP TRIGGER UPD_ETU_ramet
GO
CREATE TRIGGER [dbo].[UPD_ETU_ramet] ON [dbo].[ETUDIANTS_ramet]
FOR UPDATE
AS
DECLARE @new int
DECLARE @old int
BEGIN
select @old = (select ANNEE_ETU from deleted)
select @new = (select ANNEE_ETU from inserted)
IF @new > @old + 1 OR @new < @old
BEGIN
PRINT 'Invalid Year!'
ROLLBACK TRANSACTION
END
END
GO

IF EXISTS(
SELECT * FROM sys.triggers
WHERE name = N'DEL_ETU_ramet'
)
DROP TRIGGER DEL_ETU_ramet
GO
CREATE TRIGGER [dbo].[DEL_ETU_ramet] ON [dbo].[ETUDIANTS_ramet]
AFTER DELETE
AS
DECLARE @new int
DECLARE @old int
BEGIN
insert into ETUD_OLD_ramet(NUM_OLD, NOM_OLD, PRENOM_OLD, DATE_SORTIE)
select NUM_ETU, NOM_ETU, PRENOM_ETU, getdate()
from deleted
END
GO
