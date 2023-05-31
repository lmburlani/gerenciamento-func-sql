# Sistema de Gerenciamento de Funcionários - Documentação do Banco de Dados
Este repositório contém o esquema do banco de dados para um Sistema de Gerenciamento de Funcionários. O esquema foi projetado para armazenar e gerenciar eficientemente informações dos funcionários, cargos e departamentos.

## Projeto: "Gestão de Funcionários"

Este projeto foi desenvolvido como parte de um trabalho acadêmico em uma instituição de ensino superior.
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

## Utilização

Para utilizar este esquema de banco de dados, você pode executar o código SQL fornecido em um ambiente do SQL Server. O código SQL criará as tabelas necessárias e estabelecerá as restrições de chave estrangeira requeridas.

Sinta-se à vontade para modificar o esquema ou adicionar colunas adicionais com base em seus requisitos específicos.
