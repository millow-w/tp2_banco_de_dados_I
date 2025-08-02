/*
Script de criação do esquema relacional
*/

-- #############################################################################
-- # Entidade Pessoa
-- #############################################################################

CREATE TABLE Pessoa (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
);

CREATE TABLE ContatoTelefones (
    CPF VARCHAR(11) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    CONSTRAINT PK_ContatoTelefones PRIMARY KEY (CPF, Telefone),
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF) ON DELETE CASCADE
);

CREATE TABLE ContatoEmails (
    CPF VARCHAR(11) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CONSTRAINT PK_ContatoEmails PRIMARY KEY (CPF, Email),
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF) ON DELETE CASCADE
);

-- #############################################################################
-- # Entidade PessoaLGBT
-- #############################################################################

CREATE TABLE PessoaLGBT (
    CPF VARCHAR(11) PRIMARY KEY,
    NomeSocial VARCHAR(255) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF) ON DELETE CASCADE
);

-- #############################################################################
-- # Entidade Servidor
-- #############################################################################

CREATE TABLE Servidor (
    CPF VARCHAR(11) PRIMARY KEY,
    TipoDeContrato VARCHAR(100) NOT NULL,
    CodigoDepartamento INT NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF) ON DELETE RESTRICT,
    FOREIGN KEY (CodigoDepartamento) REFERENCES Departamento(Codigo) ON DELETE RESTRICT
);

-- #############################################################################
-- # Entidade Aluno
-- #############################################################################

CREATE TABLE Aluno (
    CPF VARCHAR(11) PRIMARY KEY,
    Matricula VARCHAR(9) NOT NULL,
    
);