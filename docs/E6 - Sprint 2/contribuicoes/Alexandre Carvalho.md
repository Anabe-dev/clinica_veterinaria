# Relatório Individual de Contribuição — Sprint 2 — Alexandre Carvalho (RA 2840482423027)

**Papel nesta sprint:** Qualidade e Engenharia de Software (QA / Backend)

---

## 1. O que fiz

| Item | PR/commit | Status |
| :--- | :---: | :---: |
| Implementação do validador customizado de data/hora (`DD/MM/YYYY HH:MM` e ISO 8601) via Pydantic | PR #20 | Concluído |
| Criação e execução da suíte de testes automatizados com Pytest (`test_sprint2.py`), cobrindo 8 novos casos de teste | PR #19 | Concluído |
| Resolução de conflitos de merge entre branch de patch e branch base (`main`) garantindo integridade do backend | PR #20 | Concluído |
| Validação e acompanhamento da pipeline de CI no GitHub Actions (Workflow #30 com 14 testes aprovados) | Commit `9c2f1a` | Concluído |
| Estruturação técnica do documento de evidências de testes (`evidencias_teste.md`) e roteiro do incremento funcional | Commit `7b3e40` | Concluído |
| Gravação, edição e hospedagem em nuvem do vídeo de demonstração funcional do sistema | PR #21 | Concluído |

---

## 2. Rituais que participei

- [x] Dailies/weeklies
- [x] Sprint Review
- [x] Retrospectiva

---

## 3. PRs de colegas que revisei

| PR | Autor | Comentário resumido |
| :--- | :---: | :--- |
| **#16 - Estrutura dos endpoints de agendamento e cancelamento** | Ana Baldivia | Revisei os schemas do FastAPI e as rotas REST, sugerindo a padronização de tratamento de erros para 409 em conflitos de horários. |
| **#17 - Regras de negócio de intervalo mínimo de vacinação** | Julia Roberta | Avaliei a lógica de cálculo de datas e propus a inclusão de suporte a mocks de vacinas aplicadas para cobertura completa nos testes. |
| **#18 - Atualização da documentação e board da sprint** | Lídia Rocha | Validei a consistência dos critérios de aceitação e movimentação dos cards no Kanban em conformidade com as entregas da sprint. |

---

## 4. Dificuldades e o que aprendi

- **Dificuldades:** 
  - Adequação dos formatos de entrada de data e hora para atender à experiência de uso local (`DD/MM/YYYY HH:MM`) sem quebrar contratos de integração contínua baseados em ISO 8601.
  - Ajuste na estrutura dos mocks do banco de dados em memória para que refletissem o comportamento esperado tanto pelos testes legados da Sprint 1 quanto pelos novos testes da Sprint 2.
  - Resolução de conflitos de versionamento no GitHub em arquivos centrais (`main.py`) e restrições de upload de arquivos pesados de mídia.

- **O que aprendi:** 
  - Aprofundamento no uso de validadores customizados no Pydantic (`@field_validator(mode="before")`) e manipulação dinâmica de tipos de data.
  - Prática avançada de depuração com Pytest para diagnosticar divergências sutis de contratos em APIs REST (`KeyError`, status codes e payloads esperados).
  - Melhores estratégias para disponibilização de evidências multimídia em documentações técnicas sem sobrecarregar repositórios Git.
