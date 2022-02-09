
-- Alterar a tabela e criar a chave primária

ALTER TABLE IF EXISTS public.transactions
    ADD COLUMN id serial NOT NULL;

ALTER TABLE IF EXISTS public.transactions
    ADD PRIMARY KEY (id);




-- Alterar os valores que são 'diferentes de letra' para 'NULL'

UPDATE transactions SET age = NULL WHERE (age ~* '[a-z]') IS true




-- Transformar a coluna 'age' em inteiro

ALTER TABLE transactions ALTER COLUMN age TYPE INTEGER USING (age::INTEGER)




-- Deixar a coluna 'gender' apenas com 'M' e 'F'

UPDATE transactions SET gender = NULL WHERE gender != 'M' AND gender != 'F'

-- Teste:

SELECT gender FROM transactions WHERE gender NOT LIKE 'M' AND gender 
NOT LIKE 'm' AND gender NOT LIKE 'F' AND gender NOT LIKE 'f' GROUP BY 1




-- Substituir por 'NULL' os valores iguais a zero no 'amount'

UPDATE transactions SET amount = NULL WHERE amount = '0'




-- Criar a coluna 'mes'
ALTER TABLE IF EXISTS public.transactions
    ADD COLUMN month INTEGER;

-- Adicionar dados à 'mes'
UPDATE transactions SET month = (
	CASE WHEN step BETWEEN 0 AND 30 THEN 1
	     WHEN step BETWEEN 31 AND 60 THEN 2
	     WHEN step BETWEEN 61 AND 90 THEN 3
	     WHEN step BETWEEN 91 AND 120 THEN 4
	     WHEN step BETWEEN 121 AND 150 THEN 5
	     WHEN step BETWEEN 151 AND 180 THEN 6
	END)

-- Conferir(é só trocar o valor do 'month')

SELECT step FROM transactions WHERE month = 1 GROUP BY 1

-- Conferir se nenhum ficou pra trás
SELECT step FROM transactions WHERE month = NULL




-- Criar coluna ano onde todos os valores devem ser '2021'

ALTER TABLE IF EXISTS public.transactions ADD COLUMN year INTEGER DEFAULT 2021;




-- Criar a coluna data extendida(extended_date)

ALTER TABLE IF EXISTS public.transactions ADD COLUMN extended_date date;


-- Setar valores para os campos da coluna extended_date

-- Teste se o 'make_date' cumpre o propósito:

SELECT customer, year, month, extended_date, make_date(year, month, 1) FROM transactions

-- Setar os valores:

UPDATE transactions SET extended_date = make_date(year, month, 1)


-- Conferir:
SELECT customer, year, month, extended_date, make_date(year, month, 1) FROM transactions WHERE extended_date != make_date(year, month, 1)


