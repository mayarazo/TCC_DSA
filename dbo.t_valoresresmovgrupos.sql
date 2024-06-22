USE model;
GO
IF OBJECT_ID('dbo.t_valoresresmovgrupos', 'U') IS NOT NULL
    DROP TABLE dbo.t_valoresresmovgrupos
GO

CREATE TABLE dbo.t_valoresresmovgrupos (
    id INT IDENTITY(1, 1),
	dt_base_varchar varchar(6),
	dt_base_char char(6),
	dt_base_int int,
	nr_grupo_varchar varchar(5),
	nr_grupo_char char(5),
	nr_grupo_int int,
	cod_seguradora_varchar varchar(5),
	cod_seguradora_char char(5),
	cod_seguradora_int int,
	cmpid int,
	valor_numeric numeric(19,2),
	valor_float float,
	valor_money money,
	valor_varchar varchar(25)

)