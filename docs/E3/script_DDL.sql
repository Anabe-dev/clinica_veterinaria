-- schema.sql — Pet & Gatô </br>
-- Gera o schema completo em um banco vazio.

CREATE TABLE nome_entidade_independente (
  id SERIAL PRIMARY KEY,
  campo VARCHAR(100) NOT NULL
);

CREATE TABLE nome_entidade_dependente (
  id SERIAL PRIMARY KEY,
  entidade_independente_id INT NOT NULL REFERENCES nome_entidade_independente(id),
  campo VARCHAR(100) NOT NULL
);

-- Seed de exemplo
INSERT INTO nome_entidade_independente (campo) VALUES ('exemplo');
