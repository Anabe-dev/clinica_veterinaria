# Backlog Priorizado — Pet & Gatô

| # | História | Critérios de aceite | Prioridade (MoSCoW) | Estimativa | Sprint alvo |
|---|---|---|---|---|---|
| 1 | Como recepcionista, quero cadastrar um tutor, para que eu consiga cadastrar o animal pertencente a ele.| - Campos obrigatórios: nome, cpf, cidade, e-mail, contato. <br>- Erro claro se CPF duplicado<br> | Must | 5 | Sprint 1 |
| 2 | Como recepcionista, quero cadastrar um animal, para que ele possa ser propriamente agendado. | - Animal com único tutor<br>- Campos obrigatórios: nome do animal, nome do tutor, tipo de animal, contato<br> | Must | 3 | Sprint 1 |
| 3 | Como veterinário, quero atualizar um prontuário com data de vacinação de um animal, para que eu saiba quando será a próxima dose. | - Vinculado a agenda da clínica<br>- Data de início não pode ser posterior à data de fim | Must | 5 | Sprint 1 |
| 4 |Como recepcionista, quero visualizar a lista de agendamentos do dia filtrada por status e veterinário, para gerenciar a fila de espera na recepção.| - Filtro padrão exibe os agendamentos da data atual]<br>- [Permite filtrar por status (Agendado, Em Espera, Em Atendimento, Concluído, Cancelado) e por profissional | Must| 5 |Sprint 2|
| 5 |Como veterinário, quero registrar o atendimento clínico do paciente (queixa, anamnese, diagnóstico e prescrição), para manter o prontuário eletrônico completo. |- Só permite iniciar o registro se a consulta estiver com status "Em Atendimento"<br>- - Campos obrigatórios: peso do pet, queixa, diagnóstico e conduta | Must| 8 | Sprint 2 |
| 6 |Como veterinário, quero consultar o histórico clínico completo de um pet (consultas anteriores, peso e tratamentos), para embasar meu diagnóstico no atendimento atual. | -Exibe lista cronológica de todos os atendimentos anteriores do animal<br>- Mostra data da consulta, nome do veterinário responsável, diagnóstico e prescrição | Must | 5 | Sprint 2 |
| 7 | Como [perfil], quero [ação], para que [benefício]. | - [critério 1]<br>- [critério 2] | Must/Should/Could/Won't | (Fibonacci: 1,2,3,5,8) ou T-shirt size (P/M/G) | |
| 8 | Como [perfil], quero [ação], para que [benefício]. | - [critério 1]<br>- [critério 2] | Must/Should/Could/Won't |(Fibonacci: 1,2,3,5,8) ou T-shirt size (P/M/G) | |
