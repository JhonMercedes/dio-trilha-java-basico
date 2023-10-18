create table reservas (
    id int comment 'Identificador unico da reserva',
    id_usuario int comment 'Referencia ao ID do usuario que faz reserva',
    id_destino int comment 'Referencia ao ID do destino da reserva',
    data date comment 'Data da reserva',
    status varchar(255) default 'pendente' comment 'status da reserva (OK, PENDENTE, CANCELADA)'
)