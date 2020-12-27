SELECT banco.numero, banco.nome FROM banco
JOIN
(
	SELECT 213 AS banco_numero
) params ON params.banco_numero = banco.numero;

