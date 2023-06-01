-- Criação da tabela para armazenar os resultados
CREATE TABLE DadosVisualizacao (
    Departamento VARCHAR(50),
    QuantidadeFuncionarios INT,
    Cargo VARCHAR(50),
    SalarioMedio DECIMAL(10,2)
);

-- Inserção dos dados na tabela
INSERT INTO DadosVisualizacao (Departamento, QuantidadeFuncionarios, Cargo, SalarioMedio)
SELECT
    Departamentos.NomeDepartamento AS Departamento,
    COUNT(Funcionarios.IDFuncionario) AS QuantidadeFuncionarios,
    Cargos.NomeCargo AS Cargo,
    AVG(Funcionarios.Salario) AS SalarioMedio
FROM
    Departamentos
LEFT JOIN
    Funcionarios ON Departamentos.IDDepartamento = Funcionarios.IDDepartamento
LEFT JOIN
    Cargos ON Funcionarios.IDCargo = Cargos.IDCargo
GROUP BY
    Departamentos.NomeDepartamento,
    Cargos.NomeCargo;
