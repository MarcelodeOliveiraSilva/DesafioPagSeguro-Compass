**Data & Analytics - Desafio PagSeguro**  
  
  
  
**1. Coleta de dados**  
  
    - Criar banco SQL local  
    - Pegar dados da internet e gravar no banco SQL 
    - Link do arquivo no Kaggle.com: https://www.kaggle.com/ealaxi/banksim1?select=bs140513_032310.csv  
    - Nome do Arquivo: bs140513_032310.csv  
    - Nome tabela a ser criada: db.transactions  
  
  
  
**2. Limpeza de dados (SQL)**  

    - Criar ID único incremental para cada transação  
    - Transformar coluna Age em inteiro  
    - Deixar coluna Gender apenas com M e F  
    - Deixar NULL onde coluna Amount for zero  
    - Criar coluna mês:  
            - step 0 a 30 = 1  
            - step 31 a 60 = 2  
            - step 61 a 90 = 3  
            - step 91 a 120 = 4  
            - step 121 a 150 = 5  
            - step 151 a 180 = 6  
    - Criar coluna ano: 2021  
    - Criar coluna data: sempre dia 1  
  
  
  
**3. Modelagem dimensional (SQL)**  

    - Criar diagrama (dbdiagram.io ou similar)
    - Criar Datamart com as novas tabelas
            - Tabela 1: analytic.fact_merchant_kpi
                    - data
                    - id merchant
                    - tpv
                    - qtd_transacoes

            - Tabela 2: analytic.fact_customer_kpi
                    - data
                    - id customer
                    - tpv
                    - qtd_transacoes

            - Tabela 3: analytic.dim_merchant_category
                    - id merchant
                    - category
  
  
  
**4. Visualização de dados (Power BI)**

    - Usar tabelas do schema analytic
    - Criar dashboard com os dados:
            - TPV por mês/ano
            - Qtd de transações por mês/ano
            - Ticket médio por mês/ano
            - TPV por category
            - Qtd de transações por category
            - Ticket médio por category
            - Top 10 customers com maior TPV
            - Top 10 customers com mais transações
            - Top 10 customers com maior Ticket Médio
            - Top 10 merchants com maior TPV
            - Top 10 merchants com mais transações
            - Top 10 merchants com maior Ticket Médio
  
  
  
**5. Informações Extras**  
   
    TPV = SUM(amount)
    qtd transacões = COUNT(distinct id único)
    Ticket médio = tpv / qtd
