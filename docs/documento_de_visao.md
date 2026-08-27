# Documento de Visão — Pet & Gatô

**Equipe:** Ana Baldivia (RA 2840482423002) — Alexandre Carvalho (RA 2840482423027) — Julia Roberta (RA 2840482423020) — Lidia Rocha (RA 2840482423022) <br />
**Trilha:** B <br />
**Origem do problema:** Banco de temas nº 03 <br />
**Data:** 21/08/2026

## 1. Problema
A clínica veterinária Pet & Gatô controla prontuários, agenda e vacinas dos animais manualmente,
utilizando anotações e planilhas, o que culmina em três dificuldades: (a) dificuldade para localização e atualização de cerca de 5 prontuários por semana; (b) conflitos ou perda de informações na organização da agenda - aproximadamente 3 casos por semana do mesmo animal ser agendado pra mesma vacina duas vezes; (c) esquecimento ou atraso na vacinação de cerca de 4 animais por semana, devido à ausência de lembretes automáticos para vacinas.

## 2. Público-alvo e perfis de usuário
| Perfil | Quem é | O que faz no sistema |
|---|---|---|
| **Veterinário** | Profissional responsável pelo atendimento dos animais | Consulta e atualiza prontuários, registra vacinas e acompanha a agenda |<br />
| **Recepcionista** | Responsável pelo atendimento e organização da clínica | Cadastra clientes e animais, agenda consultas e gerencia horários |

## 3. Visão da solução
O software será desenvolvido com o objetivo de centralizar os prontuários, controlar os agendamentos de vacinação e automatizar os lembretes de vacinas, substituindo as anotações manuais e planilhas utilizadas atualmente pela clínica.

## 4. Objetivos do MVP 
- Controle por meio de cadastros diferentes (ex: Veterinário e recepcionista).
- Resolução de conflitos de horário entre os agendamentos.
- Armazenamentos dos prontuários dos pacientes.

## 5. Fora de escopo (explicitamente)
- Módulo financeiro e emissão de notas: Não haverá controle de fluxo de caixa ou cobrança online, porque adicionaria complexidade regulatória/bancária e desviaria o foco do atendimento clínico.
- Controle avançado de estoque físico: Não será feita a gestão de compras, almoxarifado ou ponto de pedido, porque o foco da entrega é apenas o registro da aplicação da vacina no prontuário do animal.
- Upload e armazenamento de arquivos de exames (PDF, Raio-X, Ultrassom): O sistema não aceitará upload de anexos pesados de exames, porque exigiria infraestrutura de armazenamento em nuvem paga (como S3) e geraria custos desnecessários para o MVP.
- Atendimento móvel / atendimento em domicílio: Não haverá suporte para rotas geolocalizadas ou gestão de deslocamento da equipe, porque a dinâmica de atendimento em trânsito adicionaria regras de logística fora do objetivo de organização interna da clínica.

## 6. Requisitos mínimos do §3 do Manual — como este projeto cobre cada um
| Requisito mínimo | Como este projeto cobre |
|---|---|
| Autenticação com 2+ perfis | Perfis de Veterinário (acesso e edição de prontuários, prescrições e histórico clínico) e Recepcionista (Cadastro de tutores e animais e controle de agenda).|
| 6+ entidades com relacionamento N:N |Entidades: Usuário, Tutor, Animal, Consulta/Agendamento, Vacina e Prontuário. Relação N:N entre Animal e Vacina por meio da tabela associativa AplicacaoVacina (histórico de doses).|
| Regra de negócio não trivial | Bloqueio de conflito de agenda e cálculo de intervalo vacinal: validação que impede agendamentos simultâneos no mesmo horário/veterinário e bloqueia agendamento de doses repetidas de vacinas antes do intervalo clínico mínimo necessário.|
| Consulta agregada (relatório/dashboard) |Dashboard gerencial com GROUP BY e JOIN em 3+ tabelas (Animal, AplicacaoVacina, Vacina, Tutor) listando total de vacinas aplicadas por período, tipo de vacina e animais com doses em atraso.|
| Validações em interface e banco |Validação no front (campos obrigatórios, máscaras de CPF/telefone/data) e constraints no banco (NOT NULL, UNIQUE para CPF e e-mail, FK com integridade referencial e CHECK para datas válidas). | 
| Deploy público por URL |Deploy da aplicação web em nuvem (Vercel/Render/Railway) acessível via link público HTTPS. |
| Repositório Git com README |Repositório público no GitHub com documentação no README.md contendo guia passo a passo para instalação das dependências, configuração do banco de dados e execução local do projeto.|

## 7. Riscos identificados
| Risco | Impacto | Mitigação |
|---|---|---|
| Estruturação incorreta do banco de dados | Gera perda de dados, armazenamento incorreto e dificuldade do acesso às informações | Realizar o planejamento do modelo ER antes da programação |
| Conflito nas datas dos agendamentos | Agendamentos duplicados, fora do horário e sem agenda disponível | Implementar regras para verificar as agendas e impedir o agendamento em caso de conflito |
| Dificuldade de integração entre as funcionalidades | Sistema sem comunicação e não funcional  | Pesquisar previamente a integração entre os módulos e realizar testes durante o desenvolvimento |
