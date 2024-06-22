USE model;
GO
IF OBJECT_ID('dbo.t_cias', 'U') IS NOT NULL
    DROP TABLE dbo.t_cias
GO

CREATE TABLE dbo.t_cias (
    id INT IDENTITY(1, 1),
	cod_seguradora_varchar varchar(5),
	cod_seguradora_char char(5),
	cod_seguradora_int int,
	nm_seguradora varchar(200)
)