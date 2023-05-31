-- Criar tabela Funcionários
CREATE TABLE Funcionarios (
IDFuncionario INT PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL,
Sobrenome VARCHAR(50) NOT NULL,
IDDepartamento INT,
IDCargo INT,
-- Colunas adicionais podem ser adicionadas conforme necessário
);

-- Criar tabela Departamentos
CREATE TABLE Departamentos (
IDDepartamento INT PRIMARY KEY IDENTITY,
NomeDepartamento VARCHAR(50) NOT NULL,
-- Colunas adicionais podem ser adicionadas conforme necessário
);

-- Criar tabela Cargos
CREATE TABLE Cargos (
IDCargo INT PRIMARY KEY IDENTITY,
NomeCargo VARCHAR(50) NOT NULL,
-- Colunas adicionais podem ser adicionadas conforme necessário
);

-- Estabelecer relacionamento entre Funcionários e Departamentos
ALTER TABLE Funcionarios ADD CONSTRAINT FK_Funcionarios_Departamentos
FOREIGN KEY (IDDepartamento) REFERENCES Departamentos (IDDepartamento);

-- Estabelecer relacionamento entre Funcionários e Cargos
ALTER TABLE Funcionarios ADD CONSTRAINT FK_Funcionarios_Cargos
FOREIGN KEY (IDCargo) REFERENCES Cargos (IDCargo);