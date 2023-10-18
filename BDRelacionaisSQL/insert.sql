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
        'Jo�o Silva',
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
        'Cidade Hist�rica de Pedra Alta',
        'Uma cidade rica em hist�ria e arquitetura'
    );

insert into
    viagens.reservas (id, id_usuario, id_destino, data, status)
values
    (1, 1, 2, '2023-07-10', 'confirmada'),
    (2, 2, 1, '2023-08-05', 'pendente'),
    (3, 3, 3, '2023-09-20', 'cancelada');