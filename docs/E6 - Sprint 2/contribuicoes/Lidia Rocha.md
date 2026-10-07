# Relatório Individual de Contribuição — Sprint 2 — Lídia Rocha (RA 2840482423022)

**Papel nesta sprint:** Desenvolvedora Back-end / Documentação Técnica

---

## 1. O que fiz

| Item | PR/commit | Status |
| :--- | :---: | :---: |
| Atualização da documentação do projeto e gestão do board da sprint (Kanban), definindo critérios de aceitação | PR #18 | Concluído |
| Alinhamento técnico das histórias de usuário com as novas regras de negócio de agendamentos e vacinação | PR #18 | Concluído |
| Apoio na validação local das rotas de agendamento e execução da suíte do Pytest para validação de regressão | Commit local | Concluído |
| Revisão contínua das entregas para garantir o correto rastreamento dos cards no board de acordo com a pipeline de CI | Contínuo | Concluído |

---

## 2. Rituais que participei

- [x] Dailies/weeklies
- [x] Sprint Review
- [x] Retrospectiva

---

## 3. PRs de colegas que revisei

| PR | Autor | Comentário resumido |
| :--- | :---: | :--- |
| **#20 - Validador customizado de data/hora** | Alexandre Carvalho | Revisei a implementação dos validadores do Pydantic para garantir que a documentação técnica e os requisitos da API refletissem corretamente o suporte aos formatos `DD/MM/YYYY HH:MM` e ISO 8601. |
| **#16 - Endpoints de agendamento** | Ana Baldivia | Validei a estrutura das rotas criadas no FastAPI para assegurar que os status codes (como o 409 Conflict) batessem com os critérios de aceitação definidos no planejamento. |

---

## 4. Dificuldades e o que aprendi

- **Dificuldades:** 
  - Manter a documentação técnica, os contratos da API e os critérios de aceitação do Kanban perfeitamente sincronizados com as rápidas e complexas mudanças no backend (como as validações de datas retroativas e intervalos de vacina).
  - Compreender a fundo as mudanças de tipagem dinâmica inseridas na sprint para conseguir documentar o comportamento exato dos payloads esperados.

- **O que aprendi:** 
  - Aprofundei meu conhecimento em FastAPI e Pydantic, compreendendo na prática como funcionam os validadores customizados (`@field_validator`) e como eles afetam a entrada e saída de dados.
  - Melhorei minha visão sistêmica sobre Engenharia de Software, percebendo o impacto direto que uma documentação bem elaborada e um board organizado têm para guiar os testes automatizados (QA) e evitar gargalos no pipeline de CI/CD.
