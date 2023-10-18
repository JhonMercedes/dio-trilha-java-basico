create table usuarios (
    id int,
    nome varchar(255) not null comment 'Nome do usua?io',
    email varchar(100) not null unique comment 'E-mail do usuário',
    endereco varchar(50) not null comment 'Endereço do usuáiro',
    data_nascimento date not null comment 'Data de nascimento do usuário'
);