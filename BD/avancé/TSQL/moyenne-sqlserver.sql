USE [Modules]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[MOYENNE_ramet]
(
@numetd int
)
RETURNS float
AS
BEGIN
DECLARE @somme float
DECLARE @sommecoeff float
DECLARE @note float
DECLARE @coeff float
select @somme = 0
select @sommecoeff = 0

DECLARE curseur CURSOR
FOR
SELECT NOTE, COEFF_MAT
FROM NOTES_ramet, MATIERES_ramet
WHERE NOTES_ramet.CODE_MAT = MATIERES_ramet.CODE_MAT
AND NOTES_ramet.NUM_ETU = @numetd
OPEN curseur
FETCH curseur into @note,@coeff
WHILE @@FETCH_STATUS = 0
BEGIN
select @somme = @somme + @note*@coeff
select @sommecoeff = @sommecoeff + @coeff
FETCH curseur into @note,@coeff
END
IF @sommecoeff = 0
BEGIN
select @sommecoeff = 1
select @somme = 0
END
CLOSE curseur
DEALLOCATE curseur
return @somme/@sommecoeff
END
