USE model;
GO
IF OBJECT_ID('dbo.t_ramo', 'U') IS NOT NULL
    DROP TABLE t_ramo
GO

CREATE TABLE t_ramo (
    id INT IDENTITY(1, 1),
    nm_ramo VARCHAR(45),
    nr_ramo_char CHAR(4),
    nr_ramo_varchar VARCHAR(4),
	nr_ramo_int int,
	nm_ramo_nr VARCHAR(60)
)