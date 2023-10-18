-- Selecionar todos os registros da tabela "usuarios"
select * from usuarios;

-- Selecionar apenas o nome e o email dos usuários
select nome, email from usuarios;

-- Selecionar os usuários que possuem o nome "João Silva"
select * from usuarios where nome = 'João Silva';

-- Selecionar os usuários que nasceram antes de uma determinada data
select * from usuarios where data_nascimento < '1990-01-01';

-- Like
select * from  usuarios where nome like '%Silva%';
select * from  usuarios where nome like 'Jo_o%';

-- Update --
update usuarios set endereco = 'Nova Rua, 123' where email = 'joao@example.com';

-- delete --
delete from  reservas where status = 'cancelada';