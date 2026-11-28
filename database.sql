PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS pedidos_novo;
DROP TABLE IF EXISTS restaurantes;

CREATE TABLE restaurantes (
    id_restaurante INTEGER PRIMARY KEY,
    restaurante TEXT NOT NULL,
    categoria TEXT NOT NULL
);

CREATE TABLE pedidos_novo (
    id_pedido INTEGER PRIMARY KEY,
    id_restaurante INTEGER NOT NULL,
    cliente TEXT NOT NULL,
    valor INTEGER NOT NULL,
    FOREIGN KEY (id_restaurante) REFERENCES restaurantes(id_restaurante)
);

INSERT INTO restaurantes (id_restaurante, restaurante, categoria) VALUES
(1, 'SQL Burger Matriz', 'Lanches'),
(2, 'Byte Pizza', 'Pizzaria'),
(3, 'Query Sushi', 'Japonesa'),
(4, 'Chapa Quente Express', 'Lanches'),
(5, 'Massa & Código', 'Italiana'),
(6, 'Taco Loco', 'Mexicana');

INSERT INTO pedidos_novo (id_pedido, id_restaurante, cliente, valor) VALUES
(101, 1, 'Ana Clara', 45),
(102, 1, 'Bruno Silva', 60),
(103, 2, 'Carla Dias', 85),
(104, 3, 'Diego Alves', 120),
(105, 1, 'Ana Clara', 35),
(106, 4, 'Fernanda Lima', 28),
(107, 2, 'Gabriel Costa', 95),
(108, 3, 'Helena Souza', 150),
(109, 5, 'Igor Martins', 70),
(110, 1, 'Julia Rocha', 55),
(111, 4, 'Bruno Silva', 32),
(112, 2, 'Lucas Mendes', 110),
(113, 3, 'Carla Dias', 140),
(114, 5, 'Mariana Nunes', 65),
(115, 1, 'Pedro Henrique', 50);

const desafiosNivel1 = [
  {
    nivel: 1,
    id: 1,
    titulo: "Catálogo de Parceiros",
    conceito: "SELECT",
    enunciado: "O painel inicial apagou a lista de unidades. Recupere apenas o nome (restaurante) e a categoria de todos os restaurantes cadastrados.",
    queryEsperada: "SELECT restaurante, categoria FROM restaurantes;",
    dica: "Use SELECT seguido dos nomes das duas colunas separadas por vírgula e FROM restaurantes."
  },
  {
    nivel: 1,
    id: 2,
    titulo: "Pedidos de Alto Valor",
    conceito: "WHERE",
    enunciado: "A gerência precisa auditar os pedidos grandes da noite. Liste todas as colunas da tabela pedidos_novo onde o valor seja maior que 100.",
    queryEsperada: "SELECT * FROM pedidos_novo WHERE valor > 100;",
    dica: "Utilize SELECT * FROM pedidos_novo e filtre com a cláusula WHERE valor > 100."
  },
  {
    nivel: 1,
    id: 3,
    titulo: "Ranking de Vendas",
    conceito: "ORDER BY",
    enunciado: "Organize a fila de faturamento exibindo o cliente e o valor de todos os pedidos em pedidos_novo, ordenados do maior valor para o menor.",
    queryEsperada: "SELECT cliente, valor FROM pedidos_novo ORDER BY valor DESC;",
    dica: "Use ORDER BY valor DESC ao final da consulta para ordenar de forma decrescente."
  },
  {
    nivel: 1,
    id: 4,
    titulo: "Pódio da Noite",
    conceito: "LIMIT",
    enunciado: "Para fechar o relatório rápido do turno, exiba apenas o cliente e o valor dos 3 pedidos mais caros da tabela pedidos_novo.",
    queryEsperada: "SELECT cliente, valor FROM pedidos_novo ORDER BY valor DESC LIMIT 3;",
    dica: "Combine ORDER BY valor DESC com LIMIT 3 para restringir o resultado aos três primeiros registros."
  }
];