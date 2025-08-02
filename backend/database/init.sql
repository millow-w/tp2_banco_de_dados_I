/*
Script de criação do esquema relacional
*/

-- #############################################################################
-- # SEÇÃO 1: ENTIDADES INDEPENDENTES E DE APOIO
-- # Tabelas que não possuem (ou possuem poucas) dependências de outras.
-- #############################################################################

CREATE TABLE Pessoa (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (CPF)
);

CREATE TABLE PessoaLGBT (
    CPF VARCHAR(11) PRIMARY KEY,
    NomeSocial VARCHAR(255) NOT NULL,
    PRIMARY KEY (CPF),
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF) ON DELETE CASCADE
);

