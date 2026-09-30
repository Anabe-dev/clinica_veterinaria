# Ata de Retrospectiva — Sprint 2 — Pet & Gatô

**Data:** 30/09/2026  
**Presentes:** Ana Baldivia (RA 2840482423002), Alexandre Carvalho (RA 2840482423027), Julia Roberta (RA 2840482423020), Lídia Rocha (RA 2840482423022)

---

## 1. Ações da retrospectiva anterior — foram aplicadas?

| Ação decidida | Aplicada? | Evidência/comentário |
| :--- | :---: | :--- |
| Documentar no README o comando padronizado de execução local dos testes (`python -m pytest -v`) | Sim | Procedimento padronizado no `README.md` e no roteiro de testes, eliminando erros de módulo no Windows. |
| Replanejar e priorizar no backlog as regras de autorização por perfil (RBAC) para a Sprint 3 | Sim | História #4 mantida e detalhada no backlog prioritário para a entrega de Prontuários e Perfis na Sprint 3. |
| Mapear no modelo de dados as tabelas de agendamentos e intervalo entre doses vacinais | Sim | Modelagem e regras sanitárias (21 dias) implementadas com sucesso e validadas na suíte da Sprint 2. |
| Acompanhar diariamente o board Kanban para evitar acúmulo de revisões e bloqueios | Sim | Fluxo constante de cards ao longo dos 12 dias de sprint, garantindo entrega de 100% dos itens planejados. |

---

## 2. O que funcionou bem

- Cobertura ampla de testes automatizados com Pytest (14 testes no total, 100% de aprovação local e no CI).
- Implementação flexível da entrada de data/hora, aceitando tanto o formato brasileiro (`DD/MM/YYYY HH:MM`) quanto o padrão ISO 8601.
- Pipeline de integração contínua (GitHub Actions) garantindo que nenhum merge para a branch base ocorresse com regressão funcional.
- Uso do Google Drive para hospedagem do vídeo de demonstração, contornando limitações de tamanho de upload no repositório.

---

## 3. O que não funcionou

- Conflitos de merge em branches de entrega paralela (`main` vs `patch-15`) que exigiram resolução manual antes da integração final.
- Tentativa inicial de upload de arquivo de vídeo superior a 25 MB diretamente na interface web do GitHub, gerando erro de limite de tamanho.
- Divergências iniciais na estrutura de dados de testes (dicionários vs listas nos mocks em memória), exigindo ajustes na camada de teste e resposta da API.

---

## 4. Ações para a próxima sprint

| Ação | Responsável |
| :--- | :--- |
| Implementar autenticação via JWT e controle de acesso baseado em papéis (RBAC - Recepção vs Veterinário) | Ana Baldivia (Product Owner / Backend) |
| Estruturar os modelos de dados e endpoints de Prontuário Médico, evolução clínica e receitas | Julia Roberta (Dados / Backend) |
| Configurar a suíte de testes da Sprint 3 cobrindo permissões de acesso e validações clínicas | Alexandre Carvalho (Qualidade) |
| Estabelecer política de branches e merges frequentes para mitigar conflitos no fechamento da sprint | Lídia Rocha (Scrum Master) |
