# Diagramas UML — Pet & Gatô

## 1. Diagrama de Casos de Uso

```mermaid
flowchart LR
  Ator1((Recepcionista))
  Ator2((Veterinário))
  Ator3((Usuário))
  Ator4((Sistema))
  Ator1 --> UC1[Cadastrar Tutor]
  Ator1 --> UC1.1[Cadastrar Animal]
  Ator1 --> UC1.2[Verificar conflito de agenda]
  Ator1 --> UC1.3[Gerenciar Agendamentos]
  Ator2 --> UC2[Atualizar Prontuário com Vacinação]
  Ator2 --> UC2.1[Consultar Histórico Clínico]
  Ator2 --> UC2.2[Registrar Atendimento Clínico]
  Ator2 --> UC2.3[Acessar Sistema em Plantão]
  Ator3 --> UC3[Realizar Login]
  Ator3 --> UC3.1[Validar Senha]
  Ator4((Sistema)) --> Ator1((Recepcionista))
  Ator4((Sistema)) --> Ator2((Veterinário))
  Ator4((Sistema)) --> Ator3((Usuário))
  Ator4 --> UC4[Controlar Acesso por Perfil]
  Ator4 --> UC4.1[Atualizar Dados]
  Ator1 --> UC4.1[Atualizar Dados]
  teste -.->|&lt;&lt; include &gt;&gt;| teste2
   
```
## 2. Diagrama de Classes

```mermaid
classDiagram
  class Usuário {
    - id: int
    - nome: String
    - email: String
    - senha: - String
    - perfil: String
    + login()
    + logout()
  }
 class Veterinário {
    +atributo: tipo
    +metodo()
 }
  class Recepcionista {
    +atributo: tipo
    +metodo()
  }
  class Tutor {
    +atributo: tipo
    +metodo()
  }
  class Animal {
    +atributo: tipo
    +metodo()
  }
  class Atendimento {
    +atributo: tipo
    +metodo()
  }
  class Prontuário {
    +atributo: tipo
    +metodo()
  }
  class Vacinacao {
    +atributo: tipo
    +metodo()
  }
  class Agendamento {
    +atributo: tipo
    +metodo()
  }
  class Lembrete {
    +atributo: tipo
    +metodo()
  }



  Usuário "1" -- "1" Veterinário : relação
  Usuário "1" -- "1" Recepcionista : relação
  Tutor "1" -- "n" Animal: relação
  Veterinário "1" -- "1" Atendimento: relação
  Veterinário "1" -- "n" Prontuário: relação
  Recepcionista "1" -- "n" Agendamento: relação
```







  
## 3. Rastreabilidade — caso de uso → história do backlog
| Caso de uso | História(s) relacionada(s) (E2) |
|---|---|
|  | #(id da história) |
