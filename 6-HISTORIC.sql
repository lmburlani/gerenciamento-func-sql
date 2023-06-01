-- Query para criar a tabela HistoricoAlteracoes
CREATE TABLE HistoricoAlteracoes (
    IDAlteracao INT PRIMARY KEY IDENTITY,
    Tabela VARCHAR(50) NOT NULL,
    IDRegistro INT NOT NULL,
    DataAlteracao DATETIME NOT NULL,
    UserID INT NOT NULL,
    Detalhes VARCHAR(MAX),
    -- Colunas adicionais podem ser adicionadas conforme necessário
);

-- Query para inserir um registro de histórico de alterações
DECLARE @UserID INT;
SET @UserID = 123; -- ID do usuário que está realizando a alteração

-- Inserir novo registro na tabela Funcionarios
INSERT INTO Funcionarios (Nome, Sobrenome, IDDepartamento, IDCargo)
VALUES ('João', 'Silva', 1, 1);

-- Inserir registro de alteração na tabela de histórico
INSERT INTO HistoricoAlteracoes (Tabela, IDRegistro, DataAlteracao, UserID, Detalhes)
VALUES ('Funcionarios', SCOPE_IDENTITY(), GETDATE(), @UserID, 'Novo funcionário inserido');

-- Consulta para obter o histórico de alterações de um registro
SELECT Tabela, IDRegistro, DataAlteracao, UserID, Detalhes
FROM HistoricoAlteracoes
WHERE Tabela = 'Funcionarios' AND IDRegistro = 1;

-- Consulta para obter os dados de um funcionário
SELECT Funcionarios.IDFuncionario, Funcionarios.Nome, Funcionarios.Sobrenome, Cargos.NomeCargo, Departamentos.NomeDepartamento
FROM Funcionarios
JOIN Cargos ON Funcionarios.IDCargo = Cargos.IDCargo
JOIN Departamentos ON Funcionarios.IDDepartamento = Departamentos.IDDepartamento
WHERE Funcionarios.IDFuncionario = 1;
