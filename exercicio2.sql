*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
Siga  exatamente esse passo a passo:
- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_pizza para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).
- Popule esta tabela Categoria com até 5 dados.
- Popule esta tabela pizza com até 8 dados.
- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
- Faça um um select com Inner join entre  tabela categoria e pizza.
- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).*/

create database db_pizzaria

use db_pizzaria;
create table tb_categoria(
	id bigint (5) auto_increment,
    vegana boolean not null,
    borda boolean not null,
    doce boolean not null,
    primary key (id)
);

create table tb_pizza(
	id int (5) auto_increment,
    nome varchar (60) not null,
    entrega boolean not null,
    endereco_entrega varchar (100) not null,
    taxa_entrega decimal (5,2) not null,
    categoria_id bigint not null,
	valor decimal (5,2) not null,
    primary key (id),
    foreign key (id) references tb_categoria (id)
);

insert into tb_categoria (calabresa, borda, apimentada) values (false,true,false);
insert into tb_categoria (calabresa, borda, apimentada) values (true,true,false);
insert into tb_categoria (calabresa, borda, apimentada) values (true,false,true);
insert into tb_categoria (calabresa, borda, apimentada) values (false,false,true);
insert into tb_categoria (calabresa, borda, apimentada) values (false,true,true);

insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Aleluia",  false, "Rua dos Jequitibas, 5424", 12.50, 3, 43.50);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Só vem",  false, "Rua dos Noronhas, 1234", 10.00, 4, 40.00);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Mega lu",  false, "Rua dos Jordãs, 9984", 17.90, 2, 39.00);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Crazy8",  true, "Rua Amelia, 4118", 12.50, 5, 40.50);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Vitao",  true, "Rua Xuxu, 66", 17.30, 2, 33.00);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("foguin",  true, "Rua Cornelio, 556", 3.90, 4, 43.50);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Lual",  true, "Rua Assas Abib, 565", 5.80, 1, 42.00);
insert into tb_pizza (nome,  entrega, endereco_entrega, taxa_entrega, categoriaId, valor) values ("Jamanta",  false, "Rua Joao Figueira, 874", 22.30, 3, 35.50);

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoriaId
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoriaId where tb_categoria.calabresa = true;