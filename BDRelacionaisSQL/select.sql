-- Selecionar todos os registros da tabela "usuarios"
select
    *
from
    usuarios;

-- Selecionar apenas o nome e o email dos usuários
select
    nome,
    email
from
    usuarios;

-- Selecionar os usuários que possuem o nome "João Silva"
select
    *
from
    usuarios
where
    nome = 'João Silva';

-- Selecionar os usuários que nasceram antes de uma determinada data
select
    *
from
    usuarios
where
    data_nascimento < '1990-01-01';

-- Like
select
    *
from
    usuarios
where
    nome like '%Silva%';

select
    *
from
    usuarios
where
    nome like 'Jo_o%';

-- Update --
update
    usuarios
set
    endereco = 'Nova Rua, 123'
where
    email = 'joao@example.com';

-- delete --
delete from
    reservas
where
    status = 'cancelada';

SELECT
    COUNT(*)
FROM
    usuarios;

-- Media da idade dos usuarios
SELECT
    AVG(
        TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())
    ) AS idade
FROM
    usuarios;

-- Soma da idade dos usuarios
SELECT
    SUM(
        TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())
    ) AS media_idade
FROM
    usuarios;

-- Menor Idade
SELECT
    MIN(
        TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())
    ) AS media_idade
FROM
    usuarios;

-- Maior Idade
SELECT
    MAX(
        TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())
    ) AS media_idade
FROM
    usuarios;

-- Calcula quantidade de reservas por destino --
SELECT
    *,
    COUNT(*) AS total_reservas
FROM
    reservas
GROUP BY
    id_destino;

-- Limit
SELECT
    *,
    COUNT(*) AS total_reservas
FROM
    reservas
GROUP BY
    id_destino
LIMIT
    1 OFFSET 2;

SELECT
    *,
    COUNT(*) AS total_reservas
FROM
    reservas
GROUP BY
    id_destino
LIMIT
    1;

-- Ordenação
SELECT
    nome
FROM
    usuarios
ORDER BY
    nome;

SELECT
    nome,
    data_nascimento
FROM
    usuarios
ORDER BY
    data_nascimento,
    nome;

SELECT
    nome,
    data_nascimento
FROM
    usuarios
ORDER BY
    data_nascimento,
    nome DESC;