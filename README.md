# 🍔 SQL Burger: O Bug do Sistema

**Jogue online:** [Inserir link do GitHub Pages aqui]

## 📖 Sobre o Jogo
O sistema de gestão da rede de delivery **SQL Burger** sofreu uma falha crítica e os relatórios financeiros e operacionais da noite ficaram inacessíveis. No papel de Analista de Dados, o jogador precisa escrever e executar comandos SQL reais para recuperar informações, auditar faturamentos e normalizar a operação antes do fechamento do caixa.

---

## 📜 Manual de Regras
- **Objetivo:** Resolver todos os desafios de consulta e análise de dados ao longo dos 3 níveis do sistema para restaurar os relatórios do restaurante e concluir o turno com sucesso.
- **Jogadores:** 1 jogador (modo individual direto no navegador).
- **Como jogar:** Em cada etapa, o jogador lê a solicitação do gerente ou da equipe operacional, analisa o esquema das tabelas disponíveis na tela, digita o comando SQL correspondente no terminal do jogo e clica em **Executar**.
- **Como passar de nível:** O jogo possui **3 níveis sequenciais** (Nível 1 → Nível 2 → Nível 3). Para desbloquear o próximo nível, o jogador deve concluir corretamente todos os desafios do nível atual na ordem apresentada.
- **Em caso de erro:** Caso o comando contenha erro de sintaxe ou retorne um resultado diferente do esperado, o sistema exibe uma mensagem de alerta indicando a falha, desconta 1 tentativa (de um total de 3 por desafio) e libera uma dica sobre a cláusula SQL necessária. Se as tentativas zerarem, o desafio é reiniciado para uma nova tentativa.

---

## 🗺️ Níveis e Conceitos SQL
Cada nível aplica na prática **4 conceitos fundamentais** de Banco de Dados:

- **Nível 1 — O Auxiliar de Cozinha (Consultas e Filtros Básicos):**
  - `SELECT`: Seleção de colunas específicas das tabelas.
  - `WHERE`: Filtragem de registros por condições (ex.: valores ou categorias).
  - `ORDER BY`: Ordenação crescente (`ASC`) ou decrescente (`DESC`) dos resultados.
  - `LIMIT`: Restrição da quantidade de linhas retornadas (ex.: top 1 ou top 5).

- **Nível 2 — O Gerente de Turno (Agrupamentos e Métricas):**
  - `GROUP BY`: Agrupamento de registros por categoria, cliente ou restaurante.
  - `COUNT`: Contagem total de pedidos ou ocorrências.
  - `SUM`: Soma de valores para cálculo de faturamento e gastos totais.
  - `AVG`: Cálculo de médias (ex.: ticket médio por pedido ou categoria).

- **Nível 3 — O Administrador do Sistema (Junções e Filtros Avançados):**
  - `INNER JOIN`: Cruzamento de dados entre as tabelas `restaurantes` e `pedidos_novo`.
  - `LEFT JOIN`: Identificação de registros sem correspondência (ex.: restaurantes sem vendas).
  - `HAVING`: Filtragem de resultados após funções de agregação (ex.: faturamento acima de R$ 500).
  - `DISTINCT`: Eliminação de valores duplicados nas consultas.

---

## 🗄️ Modelo de Dados
O banco de dados do jogo é composto por duas tabelas principais relacionadas entre si:

1. **`restaurantes`** (Armazena o cadastro das unidades parceiras)
   - `id_restaurante` (`INTEGER`, **PRIMARY KEY**): Identificador único do restaurante.
   - `restaurante` (`TEXT`): Nome comercial do estabelecimento.
   - `categoria` (`TEXT`): Tipo de culinária (ex.: Lanches, Japonesa, Pizzaria).

2. **`pedidos_novo`** (Armazena o histórico de vendas realizadas)
   - `id_pedido` (`INTEGER`, **PRIMARY KEY**): Identificador único do pedido.
   - `id_restaurante` (`INTEGER`, **FOREIGN KEY**): Referência ao `id_restaurante` da tabela `restaurantes`.
   - `cliente` (`TEXT`): Nome do cliente que realizou a compra.
   - `valor` (`INTEGER`): Valor total do pedido em reais.

---

## 💻 Tecnologias Utilizadas
- **HTML5, CSS3 e JavaScript:** Interface interativa e regras de progressão.
- **SQL.js (SQLite via WebAssembly):** Execução real de comandos SQL diretamente no navegador, sem necessidade de instalação.
- **GitHub Pages:** Hospedagem gratuita e acesso via link público.

---

## 👥 Equipe
- Augusto Rocha.
- José Paulo.
- Pablo Messias.
- Pedro Lucas
- Victório Augusto.
