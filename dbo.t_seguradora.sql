USE model;
GO
IF OBJECT_ID('dbo.t_seguradora', 'U') IS NOT NULL
    DROP TABLE t_seguradora
GO

CREATE TABLE dbo.t_seguradora (
    id INT IDENTITY(1, 1),
	cod_seguradora_int int,
	nm_seguradora VARCHAR(200)
)