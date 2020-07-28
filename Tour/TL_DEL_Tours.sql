USE TourLogistic
GO

DROP PROC TL_DEL_Tours
GO

CREATE PROC TL_DEL_Tours(
	@IsTour			CHAR(1),	
	@TourInfID		pkType) AS
BEGIN
	IF @IsTour = 'N'
		DELETE FROM tlRequest WHERE RequestRecID = @TourInfID
END
GO

EXEC TL_DEL_Tours 'N', 1987031200002
GO


/*
SELECT * FROM tlRequest
SELECT * FROM tlPaxsTours
SELECT * FROM tlTours

*/
