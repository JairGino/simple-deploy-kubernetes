CREATE TABLE mensagens(
  id int NOT NULL UNIQUE,
  nome varchar(50),
  email varchar(50),
  comentario varchar(100)
);