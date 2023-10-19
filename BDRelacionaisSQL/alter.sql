-- Primary Key--
-- Tabela "usuarios"
ALTER TABLE
    usuarios
MODIFY
    COLUMN id INT AUTO_INCREMENT,
ADD
    PRIMARY KEY (id);

-- Tabela "destinos"
ALTER TABLE
    destinos
MODIFY
    COLUMN id INT AUTO_INCREMENT,
ADD
    PRIMARY KEY (id);

-- Tabela "reservas"
ALTER TABLE
    reservas
MODIFY
    COLUMN id INT AUTO_INCREMENT,
ADD
    PRIMARY KEY (id);

-- Exemplos --
-- Inserção na tabela "usuarios"
INSERT INTO
    usuarios (nome, email, data_nascimento, endereco)
VALUES
    (
        'João Maria',
        'joaomaria@example.com',
        '1990-01-01',
        'Rua A, 123'
    );

-- Inserção na tabela "destinos"
INSERT INTO
    destinos (nome, descricao)
VALUES
    (
        'Praia Teste',
        'Destino paradisíaco com belas praias.'
    );

-- Inserção na tabela "reservas"
INSERT INTO
    reservas (id_usuario, id_destino, data, status)
VALUES
    (4, 4, '2023-07-01', 'pendente');

-- Chaves estrangeiras --
-- Adicionando chave estrangeira na tabela "reservas" referenciando a tabela "usuarios"
ALTER TABLE
    reservas
ADD
    CONSTRAINT fk_reservas_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id);

-- Adicionando chave estrangeira na tabela "reservas" referenciando a tabela "destinos"
ALTER TABLE
    reservas
ADD
    CONSTRAINT fk_reservas_destinos FOREIGN KEY (id_destino) REFERENCES destinos(id);

-- Alterando a restrição da chave estrangeira "fk_reservas_usuarios" na tabela "reservas" para ON DELETE CASCADE
ALTER TABLE
    reservas DROP FOREIGN KEY fk_reservas_usuarios;

ALTER TABLE
    reservas
ADD
    CONSTRAINT fk_reservas_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE;

-- Adicionar colunas de endereço à tabela "Usuarios"
ALTER TABLE
    Usuarios
ADD
    rua VARCHAR(100),
ADD
    numero VARCHAR(10),
ADD
    cidade VARCHAR(50),
ADD
    estado VARCHAR(50);

-- Copia os dados da tabela original para a nova tabela
UPDATE
    usuarios
SET
    rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
    numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 2), ',', -1),
    cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 3), ',', -1),
    estado = SUBSTRING_INDEX(endereco, ',', -1);

-- Exclusão da coluna "endereco" da tabela original
ALTER TABLE
    usuarios DROP COLUMN endereco;