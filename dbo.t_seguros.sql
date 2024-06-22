USE model;
GO
IF OBJECT_ID('dbo.t_seguros', 'U') IS NOT NULL
    DROP TABLE dbo.t_seguros
GO

CREATE TABLE dbo.t_seguros (
    id INT IDENTITY(1, 1),
	dt_base_int int,
	cod_seguradora_int int,
	nr_ramo_int int,
	vl_premio_direto numeric(19,2),
	vl_premio_de_seguros numeric(19,2),
	vl_premio_retido numeric(19,2),
	vl_premio_ganho numeric(19,2),
	vl_sinistro_direto numeric(19,2),
	vl_sinistro_retido numeric(19,2),
	vl_desp_com numeric(19,2),
	vl_premio_emitido2 numeric(19,2),
	vl_premio_emitido_cap numeric(19,2),
	vl_despesa_resseguros numeric(19,2),
	vl_sinistro_ocorrido numeric(19,2),
	vl_receita_resseguro numeric(19,2),
	vl_sinistros_ocorridos_cap numeric(19,2),
	vl_recuperacao_sinistros_ocorridos_cap numeric(19,2),
	vl_rvne numeric(19,2),
	vl_conveniodpvat numeric(19,2),
	vl_consorciosefundos numeric(19,2),
)