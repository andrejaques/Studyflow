SELECT 
	banco.nome,
	agencia.nome,
	conta_corrente.numero,
	conta_corrente.digito,
	cliente.nome,
	cliente_transacoes.id,
	tipo_transacao.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente On conta_corrente.banco_numero = banco.numero AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente ON cliente.numero = conta_corrente.cliente_numero
JOIN cliente_transacoes ON cliente_transacoes.cliente_numero = conta_corrente.cliente_numero AND cliente_transacoes.conta_corrente_numero = conta_corrente.numero
JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id;