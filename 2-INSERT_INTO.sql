-- Inserção de dados na tabela Departamentos
INSERT INTO Departamentos (NomeDepartamento)
VALUES ('Departamento A'),
       ('Departamento B'),
       ('Departamento C');

-- Inserção de dados na tabela Cargos
INSERT INTO Cargos (NomeCargo)
VALUES ('Cargo 1'),
       ('Cargo 2'),
       ('Cargo 3');

-- Inserção de dados na tabela Funcionarios
INSERT INTO Funcionarios (Nome, Sobrenome, IDDepartamento, IDCargo)
VALUES ('João', 'Silva', 1, 1),
       ('Maria', 'Santos', 2, 2),
       ('Pedro', 'Almeida', 1, 3),
       ('Ana', 'Pereira', 3, 1),
       ('Carlos', 'Rodrigues', 2, 3);
