SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;

WITH tbl_tmp_banco AS 
(
	SELECT numero, nome FROM banco
)
SELECT numero, nome FROM tbl_tmp_banco;