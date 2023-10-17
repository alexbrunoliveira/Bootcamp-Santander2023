REM   Script: BootCampSantander
REM   Um banco de dados é um sistema que permite armazenar, organizar e recuperar informações de maneira eficiente. Ele é essencial para a gestão de dados em diversas aplicações, desde sistemas de gerenciamento de clientes até sistemas de rastreamento de estoque. Os bancos de dados são organizados em tabelas, permitindo o armazenamento de dados estruturados. Eles desempenham um papel fundamental na tomada de decisões informadas, análise de tendências e geração de relatórios. Os sistemas de gerenciamento de banco de dados (SGBDs) são usados para facilitar o uso e manutenção dos bancos de dados. Em resumo, bancos de dados são uma parte essencial da tecnologia da informação e da gestão de informações.

CREATE TABLE usuarios ( 
    id INT, 
    nome VARCHAR(255) NOT NULL, 
    email VARCHAR(100) NOT NULL UNIQUE, 
    endereço VARCHAR(50) NOT NULL, 
    data_nasncimento DATE NOT NULL 
);

COMMENT ON COLUMN usuarios.nome  is 'Nome do usuário';

COMMENT ON COLUMN usuarios.email  is 'E-mail do usuário';

COMMENT ON COLUMN usuarios.endereço  is 'Endereco do usuário';

COMMENT ON COLUMN usuarios.data_nasncimento  is 'Data de nascimento do usuário';

create table destinos ( 
    id number, 
    nome varchar2(255) not null, 
    descricao varchar2(255) 
);

alter table destinos add constraint destinos_nome_uq unique (nome);

COMMENT ON COLUMN destinos.nome  is 'Nome do destino';

COMMENT ON COLUMN destinos.descricao  is 'Descrição do destino';

create table reservas ( 
    id number, 
    id_usuario number, 
    id_destino number, 
    data date, 
    status varchar2(255) 
);

COMMENT ON COLUMN reservas.id  is 'identificador único de reservas';

COMMENT ON COLUMN reservas.id_usuario  is 'Referencia ao ID do usuário que fez a reserva';

COMMENT ON COLUMN reservas.id_destino  is 'Referencia ao ID do destino da reserva';

COMMENT ON COLUMN reservas.data  is 'Data da reserva';

COMMENT ON COLUMN reservas.status  is 'Status da reserva(Confirmada, pendente, cancelada, etc)';

ALTER TABLE reservas MODIFY status DEFAULT 'pendente';

select  
    "ID", 
    "NOME", 
    "EMAIL", 
    "ENDEREÇO", 
    "DATA_NASNCIMENTO" 
from "USUARIOS";

    select *from USUARIOS;

select  
    "ID", 
    "NOME", 
    "EMAIL", 
    "ENDEREÇO", 
    "DATA_NASNCIMENTO" 
from "USUARIOS";

    select *from USUARIOS;

INSERT INTO usuarios VALUES (1, 'Alex Oliveira', 'teste@gmail.com',  'Jd Tamoio nº 195 - bairro Itaquera/SP','31-MARCH-1988');

    select *from USUARIOS;

select *from USUARIOS;

INSERT INTO DESTINOS (id, nome, descricao)  
VALUES 
(1,'Praia Rosa', 'Linda Praia');

select *from DESTINOS;

INSERT INTO reservas (id, id_usuario, id_destino, status, data)  
VALUES 
(1,1,1, 'pendente','11-NOV-2023');

select *from reservas;

INSERT INTO reservas (id, id_usuario, id_destino, status, data)  
VALUES 
(2,3,3, 'pendente','10-JUL-2023');

select *from reservas;

select *from usuarios;

select *from usuarios;

select *from usuarios;

select *from usuarios;

select *from usuarios;

select *from usuarios;

INSERT INTO usuarios VALUES (2,'Maria Santos', 'maria@gmail.com', 'Rua B, 456 -  Cidade Y, Estado Z', '22-AUG-1985');

INSERT INTO usuarios VALUES (3,'Pedro Sousa', 'pedro@gmail.com', 'Avenida C, 789 -  Cidade X, Estado Y', '10-FEB-1998');

INSERT INTO destinos VALUES (3,'Cidade histórica de Pedra alta', 'Uma cidade rica em história e arquitetura');

select *from destinos;

INSERT INTO destinos VALUES (2,'Cachoeira do valo verde', 'Uma cachoeira exuberante cercada por natureza');

select *from destinos 
;

INSERT INTO reservas VALUES (1,1,2,'07-JUL-2023','confirmada'), (2,2,1,'05-AGO-2023','pendente'),(3,3,3,'20-SET-2023','cancelada');

INSERT INTO reservas VALUES (1,1,2,'07-JUL-2023','confirmada');

INSERT INTO reservas VALUES (2,2,1,'05-AUG-2023','pendente');

INSERT INTO reservas VALUES (3,3,3,'20-SEP-2023','cancelada');

select *from reservas;

select *from destinos;

select *from usuarios;

INSERT INTO usuarios VALUES (1,'Pamela Apolinario', 'pamela@gmail.com', 'Rua das rosas, 100 -  Bairro alto, araraquara/SP', '05-OCT-1992');

select *from destinos;

INSERT INTO destinos VALUES (1,'praia das Tarturugas', 'Uma bela praia com areias brancas e mar cristalino');

select *from destinos;

select *from reservas;

select *from usuarios;

select *from usuarios  
    WHERE id = 1;

select *from usuarios  
    WHERE id = 1 And nome LIKE 'Alex%';

select *from usuarios  
    WHERE id = 1 OR nome LIKE 'Alex%';

select *from usuarios  
    WHERE id = 1 OR nome LIKE 'Maria%';

select *from usuarios ;

UPDATE usuarios set id = 4 
where email = 'pamela@gmail.com	';

select *from usuarios ;

UPDATE usuarios set id = 4 
where email = 'pamela@gmail.com';

select *from usuarios ;

select *from usuarios ;

select *from destinos;

DELETE FROM destinos 
    WHERE nome = 'Praia do Rosa';

select *from destinos ;

DELETE FROM destinos 
    WHERE nome = 'Praia Rosa';

select *from destinos  
;

CREATE TABLE usuarios_nova (  
    id INT,  
    nome VARCHAR(255) NOT NULL,  
    email VARCHAR(100) NOT NULL UNIQUE,  
    endereço VARCHAR(50) NOT NULL,  
    data_nasncimento DATE NOT NULL  
) 
;

COMMENT ON COLUMN usuarios_nova.data_nasncimento  is 'Data de nascimento do usuário';

COMMENT ON COLUMN usuarios_nova.endereço  is 'Endereco do usuário';

COMMENT ON COLUMN usuarios_nova.endereço  is 'Endereco do usuário';

COMMENT ON COLUMN usuarios.data_nasncimento  is 'Data de nascimento do usuário';

COMMENT ON COLUMN usuarios_nova.nome  is 'Nome do usuário';

COMMENT ON COLUMN usuarios_nova.email  is 'Email do usuário';

COMMENT ON COLUMN usuarios_nova.id  is 'ID do usuário';

select * from usuarios;

select * from usuarios;

select * from usuarios;

select * from usuarios;

INSERT INTO  usuarios_nova (id,nome,email,endereço,data_nasncimento) 
    SELECT id, nome, email, endereço, data_nasncimento 
    FROM usuarios;

select * from usuarios_nova;

ALTER TABLE usuarios_nova 
RENAME COLUMN DATA_NASNCIMENTO TO  DATA_NASCIMENTO;

SELECT * FROM usuarios_nova;

DROP TABLE usuarios;

ALTER TABLE usuarios_nova RENAME TO usuarios;

select * from usuarios;

ALTER TABLE usuarios 
MODIFY (endereço VARCHAR2(100)) ;

select * from usuarios;

select * from usuarios;

select * from usuarios;

select * from usuarios;

ALTER TABLE usuarios  
RENAME COLUMN ENDEREÇO TO  ENDERECO;

ALTER TABLE usuarios  
ADD rua VARCHAR(100);

ALTER TABLE usuarios  
ADD cidade VARCHAR(50);

select * from usuarios;

ALTER TABLE usuarios  
ADD numero VARCHAR(10);

    ALTER TABLE usuarios  
ADD estado VARCHAR(20);

select * from usuarios;

select * from usuarios;

UPDATE usuarios  
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',1),',',-1), 
	numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',2),',',-1), 
	cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',3),',',-1), 
	estado = SUBSTRING_INDEX(endereco,',',-1);

select * from usuarios;

SELECT 
    TRIM(SUBSTR(coluna, 1, INSTR(coluna, 'nº') - 1)) AS RUA, 
    TRIM(SUBSTR(coluna, INSTR(coluna, 'nº') + 2, INSTR(coluna, '-') - INSTR(coluna, 'nº') - 2)) AS NUMERO, 
    TRIM(SUBSTR(coluna, INSTR(coluna, '-') + 2)) AS CIDADE_ESTADO 
FROM usuarios;

SELECT 
    TRIM(SUBSTR(Endereco, 1, INSTR(Endereco, 'nº') - 1)) AS RUA, 
    TRIM(SUBSTR(Endereco, INSTR(Endereco, 'nº') + 2, INSTR(Endereco, '-') - INSTR(Endereco, 'nº') - 2)) AS NUMERO, 
    TRIM(SUBSTR(Endereco, INSTR(Endereco, '-') + 2)) AS CIDADE_ESTADO 
FROM ususarios;

SELECT 
    TRIM(SUBSTR(Endereco, 1, INSTR(Endereco, 'nº') - 1)) AS RUA, 
    TRIM(SUBSTR(Endereco, INSTR(Endereco, 'nº') + 2, INSTR(Endereco, '-') - INSTR(Endereco, 'nº') - 2)) AS NUMERO, 
    TRIM(SUBSTR(Endereco, INSTR(Endereco, '-') + 2)) AS CIDADE_ESTADO 
FROM usuarios;

select * from usuarios;

SELECT 
    ID, 
    NOME, 
    EMAIL, 
    ENDERECO, 
    DATA_NASCIMENTO, 
    TRIM(REGEXP_SUBSTR(ENDERECO, '^(.*?) nº', 1, 1, NULL, 1)) AS RUA, 
    TRIM(REGEXP_SUBSTR(ENDERECO, 'nº (\d+) -', 1, 1, NULL, 1)) AS NUMERO, 
    TRIM(REGEXP_SUBSTR(ENDERECO, '- (.+?)/', 1, 1, NULL, 1)) AS CIDADE, 
    TRIM(REGEXP_SUBSTR(ENDERECO, '/(.+)$', 1, 1, NULL, 1)) AS ESTADO 
FROM usuarios;

select * from usuarios;

SELECT 
    ID, 
    NOME, 
    EMAIL, 
    ENDERECO, 
    DATA_NASCIMENTO, 
    TRIM(REGEXP_SUBSTR(ENDERECO, '^(.*?) nº', 1, 1, NULL, 1)) AS RUA, 
    TRIM(REGEXP_SUBSTR(ENDERECO, 'nº (\d+) -', 1, 1, NULL, 1)) AS NUMERO, 
    TRIM(REGEXP_SUBSTR(ENDERECO, '- (.+?)/', 1, 1, NULL, 1)) AS CIDADE, 
    TRIM(REGEXP_SUBSTR(ENDERECO, '/(.+)$', 1, 1, NULL, 1)) AS ESTADO 
FROM usuarios;

select * from usuarios 
;

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '^(.*?) nº', 1, 1, NULL, 1)), 
    NUMERO = TRIM(REGEXP_SUBSTR(ENDERECO, 'nº (\d+) -', 1, 1, NULL, 1)), 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '- (.+?)/', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, '/(.+)$', 1, 1, NULL, 1));

select * from usuarios 
;

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?\s*-', 1, 1, NULL, 1)), 
    NUMERO = TRIM(REGEXP_SUBSTR(ENDERECO, ' -\s*(\d+)', 1, 1, NULL, 1)), 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*(.+?),', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*([^,]+)$', 1, 1, NULL, 1));

select * from usuarios;

UPDATE usuarios  
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',1),',',-1), 
	numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',2),',',-1), 
	cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',3),',',-1), 
	estado = SUBSTRING_INDEX(endereco,',',-1);

UPDATE usuarios  
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',1),',',-1), 
	numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',2),',',-1), 
	cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',3),',',-1), 
	estado = SUBSTRING_INDEX(endereco,',',-1);

UPDATE usuarios  
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',1),',',-1), 
	numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',2),',',-1), 
	cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco,',',3),',',-1), 
	estado = SUBSTRING_INDEX(endereco,',',-1);

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '^(.*?) nº', 1, 1, NULL, 1)), 
    NUMERO = TRIM(REGEXP_SUBSTR(ENDERECO, 'nº (\d+) -', 1, 1, NULL, 1)), 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '- (.+?)/', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, '/(.+)$', 1, 1, NULL, 1));

select * from usuarios;

UPDATE SUA_TABELA 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?(\s*-\s*[^,]+,\s*[^,]+)?', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '([^-]+)', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*([^,]+)$', 1, 1, NULL, 1));

UPDATE SUA_TABELA 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?(\s*-\s*[^,]+,\s*[^,]+)?', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '([^-]+)', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*([^,]+)$', 1, 1, NULL, 1));

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?(\s*-\s*[^,]+,\s*[^,]+)?', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '([^-]+)', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*([^,]+)$', 1, 1, NULL, 1));

select * from usuarios;

select * from usuarios;

select * from usuarios;

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?\s*[-/]\s*[^,]+', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '[-/]\s*([^,-]+)[-,]', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, '[-/]\s*([^,-]+)$', 1, 1, NULL, 1));

select * from usuarios;

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?(\s*-\s*[^,]+,\s*[^,]+)?', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '([^-]+)', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*([^,]+)$', 1, 1, NULL, 1));

select * from usuarios;

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?\s*[-/]\s*[^,]+', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '[-/]\s*([^,-]+)[-,]', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, '[-/]\s*([^,-]+)$', 1, 1, NULL, 1));

select * from usuarios;

UPDATE usuarios 
SET 
    RUA = TRIM(REGEXP_SUBSTR(ENDERECO, '([^,]+)(,\s*\d+)?(\s*-\s*[^,]+,\s*[^,]+)?', 1, 1, NULL, 1)), 
    NUMERO = CASE 
        WHEN ENDERECO LIKE '%nº%' THEN TRIM(REGEXP_SUBSTR(ENDERECO, 'nº\s*(\d+)', 1, 1, NULL, 1)) 
        ELSE NULL 
    END, 
    CIDADE = TRIM(REGEXP_SUBSTR(ENDERECO, '([^-]+)', 1, 1, NULL, 1)), 
    ESTADO = TRIM(REGEXP_SUBSTR(ENDERECO, ',\s*([^,]+)$', 1, 1, NULL, 1));

select * from usuarios;

select * from usuarios;

UPDATE usuarios 
SET NUMERO = '456' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 2;

UPDATE SUA_TABELA 
SET ESTADO = 'SP' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 1;

UPDATE ususarios 
SET ESTADO = 'SP' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 1;

UPDATE usuarios 
SET ESTADO = 'SP' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 1;

select * from usuarios;

UPDATE usuarios 
SET NUMERO = '456' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 2;

select * from usuarios;

UPDATE usuarios 
SET NUMERO = '100' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 4;

select * from usuarios;

UPDATE usuarios 
SET NUMERO = '789' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 3;

select * from usuarios;

select * from usuarios;

UPDATE usuarios 
SET RUA = 'Jd Tamoio' -- Substitua 'SP' pelo valor desejado para o campo ESTADO 
WHERE ID = 1;

select * from usuarios;

select * from usuarios;

ALTER TABLE usuarios 
    DROP COLUMN endereco;

select * from usuarios;

