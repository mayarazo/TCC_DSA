USE model;
GO
IF OBJECT_ID('dbo.t_grupo_seguradora', 'U') IS NOT NULL
    DROP TABLE dbo.t_grupo_seguradora
GO

CREATE TABLE dbo.t_grupo_seguradora (
    id INT IDENTITY(1, 1),
	dt_base_varchar varchar(6),
	dt_base_char char(6),
	dt_base_int int,
	cod_seguradora_varchar varchar(5),
	cod_seguradora_char char(5),
	cod_seguradora_int int,
	nm_seguradora varchar(140),
	cod_grupo_seguradora_varchar varchar(5),	
	cod_grupo_seguradora_char char(5),	
	cod_grupo_seguradora_int int,
	nm_grupo_seguradora varchar(30)
)