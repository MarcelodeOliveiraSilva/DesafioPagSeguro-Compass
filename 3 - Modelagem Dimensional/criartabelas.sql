-- Criação das tabelas(Datamart)


CREATE TABLE fact_merchant_kpi(
	data DATE,
	id_merchant VARCHAR(30),
	tpv FLOAT,
	qtd_transacoes INT
);



CREATE TABLE dim_merchant_category(
	id_merchant VARCHAR(30),
	category VARCHAR(50)
);



CREATE TABLE fact_customer_kpi(
	data DATE,
	id_customer VARCHAR(30),
	tpv FLOAT,
	qtd_transacoes INT
);