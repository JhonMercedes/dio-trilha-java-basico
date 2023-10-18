-- Selecionar todos os registros da tabela "usuarios"
select * from usuarios;

-- Selecionar apenas o nome e o email dos usu�rios
select nome, email from usuarios;

-- Selecionar os usu�rios que possuem o nome "Jo�o Silva"
select * from usuarios where nome = 'Jo�o Silva';

-- Selecionar os usu�rios que nasceram antes de uma determinada data
select * from usuarios where data_nascimento < '1990-01-01';

-- Like
select * from  usuarios where nome like '%Silva%';
select * from  usuarios where nome like 'Jo_o%';

-- Update --
update usuarios set endereco = 'Nova Rua, 123' where email = 'joao@example.com';

-- delete --
delete from  reservas where status = 'cancelada';