-- Consulta: Obter a contagem de funcionários por departamento
SELECT Departamentos.NomeDepartamento, COUNT(Funcionarios.IDFuncionario) AS QuantidadeFuncionarios
FROM Departamentos
LEFT JOIN Funcionarios ON Departamentos.IDDepartamento = Funcionarios.IDDepartamento
GROUP BY Departamentos.NomeDepartamento;

-- Consulta: Obter a lista de funcionários com seus respectivos cargos e departamentos
SELECT Funcionarios.Nome, Funcionarios.Sobrenome, Cargos.NomeCargo, Departamentos.NomeDepartamento
FROM Funcionarios
JOIN Cargos ON Funcionarios.IDCargo = Cargos.IDCargo
JOIN Departamentos ON Funcionarios.IDDepartamento = Departamentos.IDDepartamento;


-- Consulta: Obter a média de salários por cargo
SELECT Cargos.NomeCargo, AVG(Funcionarios.Salario) AS MediaSalario
FROM Funcionarios
JOIN Cargos ON Funcionarios.IDCargo = Cargos.IDCargo
GROUP BY Cargos.NomeCargo;
