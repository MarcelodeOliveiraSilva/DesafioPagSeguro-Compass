-- Popular as Tabelas a Serem usadas para a próxima etapa

INSERT INTO fact_merchant_kpi (data, id_merchant, tpv, qtd_transacoes)
    SELECT extended_date AS data, merchant AS id_merchant, SUM(amount) AS tpv, COUNT(DISTINCT id) AS qtd_transacoes
        FROM transactions
    GROUP BY merchant, extended_date



INSERT INTO fact_customer_kpi (data, id_customer, tpv, qtd_transacoes)
    SELECT extended_date AS data, customer AS id_customer, SUM(amount) AS tpv, COUNT(DISTINCT id) AS qtd_transacoes
        FROM transactions
    GROUP BY extended_date, customer



INSERT INTO dim_merchant_category (id_merchant, category)
    SELECT merchant AS id_merchant, category
        FROM transactions
    GROUP BY 1,2