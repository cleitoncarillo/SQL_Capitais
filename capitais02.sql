# Código puramente didático com o objetivo de se familiarizar com alguns comando do SQL (MySQL)
# Informações importantes sobre algumas capitais de estados brasileiros, retirados
# BANCO DE DADOS: IBGE https://www.ibge.gov.br/cidades-e-estados/

create database capitais;           # Criação do banco de dados

use capitais;                     
create table caracteristicas(       # Criação da tabela
indice int not null auto_increment, # Índice (inteiro); auto_incremet = O num. é adicionado automaticamente
capital varchar(20) not null,       # Capital (caracter de no máximo 20); not null = É obrigatório o nome
estado varchar(20) not null,        # Estado (caracter de no máximo 20)
areakm2 float,                      # Área territórial por quilometro quadrado (número real)
populacao float,                    # População estimada (número real)
idhm float,                         # Índice de desenvolvimento humano municipal
pib float,                          # PIB per capita (R$)
primary key (indice)                # Chave primária: É possível apenas ter uma por cadastro
);

insert into caracteristicas         # Insira na tabela caracteristicas
(indice, capital, estado, areakm2, populacao, idhm, pib)
values
(default, 'Aracajú', 'Sergipe', '182.2', '672614', '0.771', '30427.7'),
(default, 'Fortaleza', 'Ceará', '312.3', '2703391', '0.754', '24253.9'),
(default, 'João Pessoa', 'Paraíba', '210.1', '825796', '0.763', '25402.2'),
(default, 'Maceió', 'Alagoas', '509.3', '1031597', '0.721', '22307.1'),
(default, 'Natal', 'Rio Grande do Norte', '167.4', '896708', '0.763', '25525.3'),
(default, 'Recife', 'Pernambuco', '218.8', '1661017', '0.772', '30427.6'),
(default, 'São Luís', 'Maranhão', '583.1', '1115932', '0.768', '29823.9'),
(default, 'Salvador', 'Bahia', '693.4', '2900319', '0.759', '20417.1'),
(default, 'Teresina', 'Piauí', '1391.3', '871126', '0.751', '24858.3'),
(default, 'Belém', 'Pará', '1059.4', '1506420', '0.746', '20562.1'),
(default, 'Boa vista', 'Roraima', '5687.1', '436591', '0.752', '28181.1'),
(default, 'Macapá', 'Amapá', '6563.8', '522357', '0.733', '22880.7'),
(default, 'Manaus', 'Amazonas', '11401.1', '2255903', '0.737', '41345.1'),
(default, 'Palmas', 'Tocantins', '2227.3', '313349', '0.788', '32452.5'),
(default, 'Porto Velho', 'Rondônia', '34091.0', '548952', '0.736', '36059.3'),
(default, 'Rio Branco', 'Acre', '8835.1', '419452', '0.727', '23171.6'),
(default, 'Brasília', 'Distrito Federal', '5760.8', '3094325', '0.824', '87016.2'),
(default, 'Campo Grande', 'Mato Grosso do Sul', '8083.1', '916001', '0.784', '33243.6'),
(default, 'Cuiabá', 'Mato Grosso', '5077.1', '623614', '0.785', '42918.3'),
(default, 'Goiânia', 'Goiás', '729.3', '1555626', '0.799', '33826.8'),
(default, 'Belo Horizonte', 'Minas Gerais', '331.4', '2530701', '0.811', '38670.4'),
(default, 'Rio de Janeiro', 'Rio de Janeiro', '1200.3', '6775561', '0.799', '49094.4'),
(default, 'São Paulo', 'São Paulo', '1521.2', '12396372', '0.805', '60750.1'),
(default, 'Vitória', 'Espírito Santo', '97.1', '369534', '0.845', '69628.4'),
(default, 'Curitiba', 'Parana', '434.9', '1963726', '0.823', '45318.5'),
(default, 'Florianópolis', 'Santa Catarina', '674.8', '516524', '0.847', '41885.5'),
(default, 'Porto Alegre', 'Rio Grande do Sul', '495.4', '1492530', '0.805', '51116.7'),
(default, 'Brasil', 'Brasil', '8510345.5', '213317639', '2', '35935.7');

delete from caracteristicas
where indice = '28';                  # Exclui a linha de índice = 28

update caracteristicas
set capital = 'Aracaju' where indice = '1';
update caracteristicas
set estado = 'Paraná' where indice = '25';

alter table caracteristicas
add column EsporteDestaque varchar(20) not null default 'Futebol';

#truncate table caracteristicas;      # Exclui todos os dados da tabela
#drop table caracteristicas;          # Exclui a tabela em si
#drop database caracteristicas;       # Exclui o banco de dados

select * from caracteristicas
#order by capital;
#order by capital asc;                # Ordena, de forma crescente, de acordo com um dos campos (colunas)
order by capital desc;                # Ordena, de forma decrescente, de acordo com um dos campos (colunas)

select capital, populacao from caracteristicas   # Seleção de colunas
order by populacao desc;

select * from caracteristicas
where areakm2 > '690'                 # Condição para imprimir linhas específicas
order by populacao;

select * from caracteristicas
where areakm2 between '690' and 2000  # A seleção das linhas é feita por meio de comando "between"
order by pib;

select * from caracteristicas
#where populacao > '2900000' or pib > '20000'
where populacao > '2900000' and pib > '20000'    # "and" ou "or"
order by indice;