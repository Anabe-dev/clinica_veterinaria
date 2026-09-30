# Relatório de Entrega — Sprint 2 — Pet & Gatô

**Período:** 19/09/2026 a 30/09/2026  
**Sprint Review:** 30/09/2026, com o professor Lucas B. F.  

---

## 1. Planejado vs. entregue

| História (E2) | Planejada para esta sprint? | Entregue? | Observação |
| :--- | :---: | :---: | :--- |
| **#5 Agendamento de Consultas e Vacinação** | Sim | Sim | Criação do endpoint `POST /agendamentos` com vínculo relacional a tutor e animal existentes. |
| **#6 Prevenção de Conflitos de Agenda** | Sim | Sim | Regra de negócio que impede horários concorrentes para o mesmo médico-veterinário (Status 409). |
| **#7 Validação Temporal de Agendamentos** | Sim | Sim | Bloqueio automatizado para tentativas de marcação em datas e horários retroativos (Status 400). |
| **#8 Cancelamento de Consultas** | Sim | Sim | Implementação da rota `PATCH /agendamentos/{id}/cancelar` com atualização de estado para `CANCELADO`. |
| **#9 Listagem e Filtro de Horários** | Sim | Sim | Endpoint `GET /agendamentos` com suporte a filtros dinâmicos por profissional e estado. |
| **#10 Intervalo Mínimo entre Doses de Vacina** | Sim | Sim | Regra sanitária bloqueando aplicações com intervalo inferior a 21 dias para a mesma vacina (Status 400). |

---

## 2. Incremento funcional demonstrável

Módulo completo de **Gestão de Agendamentos e Calendário Veterinário**, operando de forma integrada ao cadastro de utilizadores, tutores e animais implementado na Sprint 1. O sistema previne conflitos de agenda médica, valida a integridade temporal impedindo agendamentos no passado, aplica a regra sanitária de intervalo mínimo de 21 dias entre doses de vacinas e possibilita o cancelamento e a listagem segmentada por profissional veterinário e estado da consulta. Ambiente em execução local através de FastAPI/Uvicorn, com suíte automatizada de testes e pipeline de integração contínua (GitHub Actions) aprovado.

**Vídeo de demonstração:** [Assistir demonstração no Google Drive](https://drive.google.com/file/d/1-8vkXRwylf5g8hkHevZuV3GrXhECuaiZ/view?usp=sharing)

**Passo a passo para reproduzir localmente:**
1. Acessar a pasta do backend: `cd backend`
2. Instalar as dependências: `pip install -r requirements.txt`
3. Executar os testes automatizados: `python -m pytest -v`
4. Iniciar o servidor da API: `uvicorn app.main:app --reload`
5. Acessar a documentação Swagger interativa em: `http://127.0.0.1:8000/docs`

---

## 3. Backlog atualizado

**Board:** [Link a ser definido pela equipe] — ao final da sprint, todos os cards planejados para a iteração moveram de "A fazer" para "Concluído" (#5, #6, #7, #8, #9 e #10). A história #4 (Atualização de prontuário com segregação de perfis), herdada do planejamento anterior, permanece no backlog priorizado para a Sprint 3 junto à implementação dos relatórios clínicos e perfis de acesso.

---

## 4. Evidências de teste

Testes unitários e de integração cobrindo fluxos de sucesso e regras de negócio críticas (status 201, 200, 400, 404 e 409), totalizando 14 testes automatizados executados e 100% aprovados localmente e no pipeline de CI (GitHub Actions). Detalhe completo: `docs/E6 - Sprint 2/evidencias_teste.md`.

---

## 5. Retrospectiva e contribuição individual

- **Ata de retrospectiva:** `docs/E6 - Sprint 2/retrospectiva.md`
- **Relatórios individuais de contribuição da equipe (nome + RA):** localizados na pasta `docs/contribuicoes/`

---

## 6. Riscos/impedimentos para a próxima sprint

O foco principal para a Sprint 3 será a integração das regras de controle de acesso e segregação de perfis (`Recepcao` vs `Veterinario`), associada ao módulo de prontuário eletrônico, prescrição de receitas e registro da evolução clínica do animal (história #4). Um risco identificado reside na complexidade de vincular a autorização JWT aos endpoints clínicos e na futura persistência definitiva em banco de dados relacional para preservação do histórico de consultas e vacinas aplicadas.
