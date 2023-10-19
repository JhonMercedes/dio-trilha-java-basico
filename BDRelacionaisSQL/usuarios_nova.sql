-- Criando nova tabela --
CREATE TABLE usuarios_nova (
    id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usu�rio',
    email VARCHAR(255) NOT NULL UNIQUE COMMENT 'Endere�o de e-mail do usu�rio',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usu�rio',
    endereco VARCHAR(100) NOT NULL COMMENT 'Endere�o do Cliente'
);

-- Migrando os dados --
INSERT INTO
    usuarios_nova
SELECT
    *
from
    usuarios;

-- Excluindo tabela anterior --
DROP table usuarios;

-- Renomeando nova tabela --
ALTER TABLE
    usuarios_nova RENAME usuarios;

-- Ou op��o 2 : Alterar tamanho da coluna endere�o -- 
ALTER TABLE
    usuarios
MODIFY
    COLUMN endereco VARCHAR(100);