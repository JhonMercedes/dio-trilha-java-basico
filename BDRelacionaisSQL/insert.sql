insert into
    usuarios(id, nome, email, data_nascimento, endereco)
values
    (
        1,
        'Jhon',
        'teste@gmail.com',
        '1993-02-02',
        'Rua esquina GO'
    );

insert into
    destinos (id, nome, descricao)
values
    (1, 'Praia do rosa', 'Linda Praia');

insert into
    reservas (id, id_usuario, id_destino, status, data)
values
    (1, 1, 1, 'pendente', '2023-02-11');

-- Inserts --
insert into
    viagens.usuarios (id, nome, email, data_nascimento, endereco)
values
    (
        1,
        'João Silva',
        'joao@example.com',
        '1990-05-15',
        'Rua A, 123, Cidade X, Estado Y'
    ),
    (
        2,
        'Maria Santos',
        'maria@example.com',
        '1985-08-22',
        'Rua B, 456, Cidade Y, Estado Z'
    ),
    (
        3,
        'Pedro Souza',
        'pedro@example.com',
        '1998-02-10',
        'Avenida C, 789, Cidade X, Estado Y'
    );

insert into
    viagens.destinos (id, nome, descricao)
values
    (
        1,
        'Praia das Tartarugas',
        'Uma bela praia com areias brancas e mar cristalino'
    ),
    (
        2,
        'Cachoeira do Vale Verde',
        'Uma cachoeira exuberante cercada por natureza'
    ),
    (
        3,
        'Cidade Histórica de Pedra Alta',
        'Uma cidade rica em história e arquitetura'
    );

insert into
    viagens.reservas (id, id_usuario, id_destino, data, status)
values
    (1, 1, 2, '2023-07-10', 'confirmada'),
    (2, 2, 1, '2023-08-05', 'pendente'),
    (3, 3, 3, '2023-09-20', 'cancelada');

INSERT INTO
    usuarios (
        nome,
        email,
        data_nascimento,
        rua,
        numero,
        cidade,
        estado
    )
VALUES
    (
        'Usuario sem reservas',
        'semreservar@teste.com',
        '1990-10-10',
        'Rua',
        '123',
        'cidade',
        'estado'
    );

-- Traz apenas os usuario com reservas
SELECT
    *
FROM
    usuarios us
    INNER JOIN reservas rs ON us.id = rs.id_usuario;

-- Traz todos os usuario e suas reservas se tiver
SELECT
    *
FROM
    usuarios us
    INNER JOIN reservas rs ON us.id = rs.id_usuario;

INSERT INTO
    viagens.destinos (nome, descricao)
VALUES
    (
        'Deestino sem reserva',
        'Uma bela praia com areias brancas e mar cristalino'
    ) -- Tras todos os destinos e as reservas se tiverem -- 
SELECT
    *
FROM
    reservas rs
    RIGHT JOIN destinos des ON des.id = rs.id_destino;

-- Produz o mesmo resultado que a anterior
SELECT
    *
FROM
    destinos des
    LEFT JOIN reservas rs ON des.id = rs.id_destino;

-- SUb consultas
-- Usuários que não fizeram nenhuma reserva
SELECT
    nome
FROM
    usuarios
WHERE
    id NOT IN (
        SELECT
            id_usuario
        FROM
            reservas
    );

-- Subconsulta para encontrar os destinos menos populares (com menos reservas):
SELECT
    nome
FROM
    destinos
WHERE
    id NOT IN (
        SELECT
            id_destino
        FROM
            reservas
    )
ORDER BY
    id;

-- contagem de reservas por usuario
SELECT
    nome,
    (
        SELECT
            COUNT(*)
        FROM
            reservas
        WHERE
            id_usuario = usuarios.id
    ) AS total_reservas
FROM
    usuarios;