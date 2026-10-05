# Relatório Individual de Contribuição — Sprint 1 — Lidia Rocha (RA 2840482423022)

**Papel nesta sprint:** Facilitador

## 1. O que fiz
| Item | PR/commit | Status |
|---|---|---|
| Elaboração da documentação de visão do projeto e especificação técnica das Histórias de Usuário | PR #17 | Concluído |
| Configuração do ambiente local do backend e validação da suíte de testes unitários (`test_sprint1.py`) desenvolvida pela equipe de QA | Review do PR #19 | Concluído |
| Teste de integração das rotas da API localmente para garantir a consistência do código antes do merge com a `main` | Review do PR #19 | Concluído |

## 2. Rituais que participei
- [x] Dailies/weeklies
- [x] Sprint Review
- [x] Retrospectiva

## 3. PRs de colegas que revisei
| PR | Autor | Comentário resumido |
|---|---|---|
| #19 | Alexandre Carvalho | Realizei o checkout da branch, configurei o ambiente (venv/dependências) e executei localmente a suíte do Pytest. Garanti que os testes automatizados estavam se comunicando corretamente com o `app` e validando o comportamento das rotas (como as de tutores e animais) sem quebrar o ecossistema do backend. |

## 4. Dificuldades e o que aprendi
- **Dificuldades:** Encontrei desafios no setup do ambiente local para mimetizar exatamente o pipeline do GitHub Actions. Houve algumas divergências de contexto de execução e importação (lidando com as variáveis de ambiente e o gerenciamento de pacotes do Python) na hora de rodar a API localmente junto com os testes, sem dar conflito de rotas não encontradas ou de escopo do Pytest.
- **O que aprendi:** Aprofundei meus conhecimentos sobre a estrutura de módulos em Python e a importância de manter um ambiente virtual (`venv`) limpo e bem documentado. Além disso, entendi na prática o quão essencial é o alinhamento entre a documentação de visão/requisitos (que eu desenvolvi no PR #17) e a implementação técnica das rotas e testes para garantir que o projeto escale com qualidade técnica.
