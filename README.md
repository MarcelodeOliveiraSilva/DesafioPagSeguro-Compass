Data & Analytics - Desafio PagSeguro<br\>
<br\>
1) Coleta de dados (Airflow / Python / Shell) -- NÃO REALIZADA<br\>
    Criar Airflow local<br\>
    Criar banco SQL local<br\>
    Pegar dados da internet e gravar no banco SQL via DAG do Airflow<br\>
        link https://www.kaggle.com/ealaxi/banksim1?select=bs140513_032310.csv<br\>
        arquivo bs140513_032310.csv<br\>
<br\>
    Nome tabela: db.transactions<br\>
<br\>
2) Limpeza de dados (SQL)<br\>
    Criar ID único incremental para cada transação<br\>
    Transformar coluna Age em inteiro<br\>
    Deixar coluna Gender apenas com M e F<br\>
    Deixar NULL onde coluna Amount for zero<br\>
    Criar coluna mês: <br\>
        step 0 a 30 = 1<br\>
        step 31 a 60 = 2<br\>
        step 61 a 90 = 3<br\>
        step 91 a 120 = 4<br\>
        step 121 a 150 = 5<br\>
        step 151 a 180 = 6<br\>
    Criar coluna ano: 2021<br\>
    Criar coluna data: sempre dia 1<br\>
<br\>
<br\>
<br\>
3) Modelagem dimensional (SQL)<br\>
    Criar diagrama (dbdiagram.io ou similar)<br\>
    Criar Datamart com as novas tabelas<br\>
<br\>
        Tabela 1: analytic.fact_merchant_kpi<br\>
            data<br\>
            id merchant<br\>
            tpv<br\>
            qtd_transacoes<br\>
<br\>
        Tabela 2: analytic.fact_customer_kpi<br\>
            data<br\>
            id customer<br\>
            tpv<br\>
            qtd_transacoes<br\>
<br\>
        Tabela 3: analytic.dim_merchant_category<br\>
            id merchant<br\>
            category<br\>
<br\>
4) Visualização de dados (Power BI)<br\>
<br\>
    Usar tabelas do schema analytic<br\>
<br\>
    Criar dashboard com os dados<br\>
        TPV por mês/ano<br\>
        Qtd de transações por mês/ano<br\>
        Ticket médio por mês/ano<br\>
        TPV por category<br\>
        Qtd de transações por category<br\>
        Ticket médio por category<br\>
        Top 10 customers com maior TPV<br\>
        Top 10 customers com mais transações<br\>
        Top 10 customers com maior Ticket Médio<br\>
        Top 10 merchants com maior TPV<br\>
        Top 10 merchants com mais transações<br\>
        Top 10 merchants com maior Ticket Médio<br\>
<br\>
    TPV = SUM(amount)<br\>
    qtd transacões = COUNT(distinct id único)<br\>
    Ticket médio = tpv / qtd<br\>
<br\>
