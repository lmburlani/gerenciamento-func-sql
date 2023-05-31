# Sistema de Gerenciamento de Funcionários - Documentação do Banco de Dados
Este projeto foi desenvolvido como parte de um trabalho acadêmico e tem como objetivo demonstrar o conhecimento em SQL Server e boas práticas de desenvolvimento de banco de dados. O projeto consiste em um sistema de gerenciamento de funcionários, no qual é possível realizar operações CRUD, executar consultas complexas e gerar relatórios.

## Projeto: "Gestão de Funcionários"

Este projeto foi desenvolvido como parte de um trabalho acadêmico da minha pós graduação.
## Design do Esquema

O esquema consiste nas seguintes tabelas:

### Funcionários - Armazena informações dos funcionários.


1. EmployeeID (PK) - Identificador único para cada funcionário.
1. FirstName - Primeiro nome do funcionário.
1. LastName - Sobrenome do funcionário.
1. PositionID (FK) - Chave estrangeira referenciando a tabela de Cargos.

### Cargos - Representa os diferentes cargos na organização.

1. PositionID (PK) - Identificador único para cada cargo.
1. PositionName - Nome do cargo.


### Departamentos - Armazena informações dos departamentos.
1. DepartmentID (PK) - Identificador único para cada departamento.
1. DepartmentName - Nome do departamento.

### FuncionarioDepartamento - Estabelece o relacionamento entre funcionários e departamentos (Muitos-para-Muitos).
1. EmployeeDepartmentID (PK) - Identificador único para cada relação funcionário-departamento.
1. EmployeeID (FK) - Chave estrangeira referenciando a tabela de Funcionários.
1. DepartmentID (FK) - Chave estrangeira referenciando a tabela de Departamentos.


## Estrutura do Projeto

1. Esquema do Banco de Dados: O esquema do banco de dados foi projetado para armazenar informações sobre funcionários, departamentos e cargos. O esquema foi normalizado para garantir a integridade dos dados e a eficiência das consultas.
1. Create Table: O esquema do banco de dados é criado utilizando a instrução CREATE TABLE para definir as tabelas Funcionarios, Departamentos e Cargos. Essas tabelas possuem os campos necessários para armazenar as informações relevantes para o sistema.
1. Consultas Complexas e Relatórios: O projeto inclui consultas complexas que permitem realizar análises detalhadas e gerar relatórios. Alguns exemplos dessas consultas incluem:
1. Relatório de Contagem de Funcionários por Departamento: Esta consulta retorna a contagem de funcionários em cada departamento. Essa informação pode ser utilizada para análises de alocação de recursos e dimensionamento de equipes.
1. Relatório de Salário Médio por Cargo: Essa consulta retorna o salário médio de cada cargo. Essa informação pode ser utilizada para identificar possíveis disparidades salariais e garantir a equidade salarial dentro da organização.
1. Testes Unitários: Foram implementados testes unitários para verificar a integridade e a funcionalidade das consultas. Esses testes incluem:
1. Verificar funcionários sem departamento atribuído: Garante que todos os funcionários tenham um departamento válido atribuído.
1. Verificar se todos os cargos estão relacionados a um departamento existente: Assegura que todos os cargos estejam vinculados a departamentos válidos.
1. Verificar se todos os funcionários têm um cargo válido atribuído: Certifica-se de que todos os funcionários possuam um cargo válido.
1. Verificar duplicatas na tabela de funcionários: Garante a integridade dos dados e evita registros duplicados.
1. Criação de uma Tabela para Visualização de Dados: Foi criada uma nova tabela chamada DadosVisualizacao para armazenar os resultados de uma consulta que resume as informações relevantes. Essa tabela pode ser utilizada como fonte de dados para ferramentas de visualização, como o Tableau, facilitando a criação de gráficos e dashboards interativos.



## Utilização

Para utilizar este esquema de banco de dados, você pode executar o código SQL fornecido em um ambiente do SQL Server. O código SQL criará as tabelas necessárias e estabelecerá as restrições de chave estrangeira requeridas.

Sinta-se à vontade para modificar o esquema ou adicionar colunas adicionais com base em seus requisitos específicos.

