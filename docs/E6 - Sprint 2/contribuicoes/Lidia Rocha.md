# Relatório Individual de Contribuição — Sprint 2 — Lídia Rocha (RA 2840482423022)

**Papel nesta sprint:** Desenvolvedora Back-end

---

## 1. O que fiz

| Item | PR/commit | Status |
|---|---|:---:|
| Desenvolvimento/Apoio na lógica dos endpoints REST para o módulo de Agendamentos e Vacinação no FastAPI | PR #XX | Concluído |
| Implementação e tratamento das regras de negócio e retornos HTTP (400 Datas Retroativas, 404 Entidade não encontrada e 409 Conflito de Horários) | PR #XX | Concluído |
| Validação da regressão do código: execução local da suíte do Pytest garantindo a aprovação dos 14 testes (6 da Sprint 1 + 8 novos da Sprint 2) | PR #XX | Concluído |
| Acompanhamento da integração contínua (CI) no GitHub Actions para garantir o merge limpo com a branch `main` | PR #XX | Concluído |

---

## 2. Rituais que participei

- [x] Dailies/weeklies
- [x] Sprint Review
- [x] Retrospectiva

---

## 3. PRs de colegas que revisei

| PR | Autor | Comentário resumido |
|---|---|---|
| #XX | Alexandre Carvalho (ou QA da equipe) | Revisei as novas implementações da suíte de testes (CT11 a CT18). Executei o código localmente no VS Code para confirmar que os testes de agendamento, cancelamento e regras de vacina (intervalo de 21 dias) estavam passando e integrados corretamente com o backend antes da aprovação do PR. |

---

## 4. Dificuldades e o que aprendi

- **Dificuldades:** A maior complexidade desta sprint no backend foi lidar com a manipulação e validação de datas/horas (datetime). Implementar a lógica que impede agendamentos retroativos e calcula o intervalo mínimo de 21 dias para as vacinas exigiu bastante atenção para evitar bugs de fuso horário e garantir que a API retornasse os erros corretos (como o `400 Bad Request` e o `409 Conflict`).
- **O que aprendi:** Evoluí bastante no tratamento de exceções do FastAPI, compreendendo melhor como mapear regras de negócio complexas para respostas HTTP semânticas. Além disso, ver o pipeline do GitHub Actions validando 100% da regressão e dos códigos novos reforçou meu entendimento sobre o valor de manter os testes unitários sempre atualizados.
