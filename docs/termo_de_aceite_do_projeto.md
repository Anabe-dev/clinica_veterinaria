# Termo de Aceite do Projeto — Pet & Gatô

**Equipe:** Ana Baldivia (RA 2840482423002) — Alexandre Carvalho (RA 2840482423027) — Julia Roberta (RA 2840482423020) — Lidia Rocha (RA 2840482423022) <br />
**Trilha:** B <br />
**Data:** 28/08/2026

## 1. Escopo aceito para o semestre (funcionalidades Must + Should)
1. Cadastro de animal: Permite registrar o pet, vinculando-o a um único tutor.
2. Cadastro de tutor: Permite o registro dos dados do responsável pelo animal no sistema (Nome, CPF, cidade, e-mail, contato).
3. Atualização de prontuário com vacinas: Possibilita que o veterinário registre as datas de vacinação no prontuário para controle de doses futuras.
4. Gestão de agendamentos diários: Visualização da lista de agendamentos do dia com filtros por status (Agendado, Em Espera, etc.) e por profissional.
5. Registro de atendimento clínico: Permite ao veterinário documentar a consulta completa (queixa, anamnese, diagnóstico e prescrição/conduta).
6. Consulta de histórico clínico: Fornece acesso ao histórico completo de atendimentos anteriores do pet para embasar diagnósticos.
...

## 2. Critérios de pronto do MVP
- Recepcionista e veterinário conseguem acessar o sistema com perfis distintos e permissões específicas.
- Sistema está publicamente acessível por URL
- Fluxo clínico funciona de ponta a ponta: cadastro de tutor/animal → agendamento de consulta/vacina → registro de atendimento no prontuário/aplicação de vacina.
- O sistema bloqueia agendamentos simultâneos no mesmo horário/veterinário e impede agendamento de doses repetidas fora do intervalo clínico.

## 3. Stack tecnológica definida
| Camada | Tecnologia |
|---|---|
| Frontend | HTML, CSS |
| Backend | |
| Banco de dados | PostgreSQL |
| Deploy | Render (backend + banco) / Vercel (frontend) |

## 4. Papéis iniciais da equipe (Sprint 1)
| Integrante | Papel |
|---|---|
| Ana Baldivia | Product Owner |
| Alexandre Carvalho | Responsável por qualidade |
| Julia Roberta | Responsável por dados |
| Lidia Rocha | Facilitador / Scrum Master |

## 5. Aprovação
- Professor: _______________________ Data: ___ / ___ / ____
