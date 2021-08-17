# language: pt

@pesquisar
Funcionalidade: Pesquisar

Contexto:
Dado que eu acesse o site da HypeFlame

@pesuisa_com_resultado
Cenário: Realizar uma busca com resultados encontrados
Quando realizar uma busca por 'Como um Serviços perde mensagens no RabbitMQ – Parte 1'
Então será apresentado o resultado da pesquisa

@pesuisa_sem_resultado
Cenário: Realizar uma busca sem resultados encontrados
Quando realizar uma busca por 'XPTO123!'
Então não apresentrá nenhum resultado associado a pesquisa