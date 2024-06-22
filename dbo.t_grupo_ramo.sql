USE model;
GO
IF OBJECT_ID('dbo.t_grupo_ramo', 'U') IS NOT NULL
    DROP TABLE dbo.t_grupo_ramo
GO

CREATE TABLE dbo.t_grupo_ramo (
    id INT IDENTITY(1, 1),
    nm_grupo VARCHAR(90),
    nr_grupo_char CHAR(2),
    nr_grupo_varchar VARCHAR(2),
	nr_grupo_int int,
	nm_grupo_nr VARCHAR(60)
)