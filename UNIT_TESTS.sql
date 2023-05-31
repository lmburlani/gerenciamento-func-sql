-- Teste Unitário: Verificar se existem funcionários sem departamento atribuído
-- Motivo: Garantir que todos os funcionários tenham um departamento válido

SELECT Funcionarios.IDFuncionario, Funcionarios.Nome, Funcionarios.Sobrenome
FROM Funcionarios
WHERE Funcionarios.IDDepartamento IS NULL;

-- Teste Unitário: Verificar se todos os cargos estão relacionados a um departamento existente
-- Motivo: Assegurar que todos os cargos estejam vinculados a departamentos válidos

SELECT Cargos.IDCargo, Cargos.NomeCargo
FROM Cargos
LEFT JOIN Departamentos ON Cargos.IDDepartamento = Departamentos.IDDepartamento
WHERE Departamentos.IDDepartamento IS NULL;

-- Teste Unitário: Verificar se todos os funcionários têm um cargo válido atribuído
-- Motivo: Certificar-se de que todos os funcionários possuam um cargo válido

SELECT Funcionarios.IDFuncionario, Funcionarios.Nome, Funcionarios.Sobrenome
FROM Funcionarios
LEFT JOIN Cargos ON Funcionarios.IDCargo = Cargos.IDCargo
WHERE Cargos.IDCargo IS NULL;

-- Teste Unitário: Verificar se há duplicatas na tabela de funcionários
-- Motivo: Garantir a integridade dos dados e evitar registros duplicados

SELECT Nome, Sobrenome, COUNT(*) AS Quantidade
FROM Funcionarios
GROUP BY Nome, Sobrenome
HAVING COUNT(*) > 1;
