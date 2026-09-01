# Diagramas UML — [Nome do Projeto]

## 1. Diagrama de Casos de Uso

```mermaid
flowchart LR
  Ator1((Perfil 1))
  Ator2((Perfil 2))
  Ator1 --> UC1[Caso de uso 1]
  Ator2 --> UC2[Caso de uso 2]
```

## 2. Diagrama de Classes

```mermaid
classDiagram
  class NomeClasse1 {
    +atributo: tipo
    +metodo()
  }
  class NomeClasse2
  NomeClasse1 "1" -- "N" NomeClasse2 : relação
```

## 3. Rastreabilidade — caso de uso → história do backlog
| Caso de uso | História(s) relacionada(s) (E2) |
|---|---|
