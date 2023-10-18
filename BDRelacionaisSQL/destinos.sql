create table destinos (
    id int,
    nome varchar(255) not null unique comment 'Nome do destino',
    descricao varchar(255) not null comment 'Descrição do destino'
);