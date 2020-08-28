create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint (5) auto_increment,
    tipo varchar(100)not null,
    armadura varchar (200) not null,
    habilidade varchar (200) not null,
    primary key (id)
);

create table tb_personagem(
	id bigint (5) auto_increment,
    nome varchar (50) not null,
    equipe varchar (50) not null,
    raca varchar (50) not null,
    ataque bigint (10) not null,
    defesa bigint (10) not null,
    classe_id bigint(10) not null,
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

insert into tb_classe (tipo, armadura, habilidade) values ("Elfo", "Couro", "Arco e flecha");
insert into tb_classe (tipo, armadura, habilidade) values ("Anão", "Tecido", "Escavando");
insert into tb_classe (tipo, armadura, habilidade) values ("Mago", "Magia", "Levitação");
insert into tb_classe (tipo, armadura, habilidade) values ("Humano", "Couro", "Espadas");
insert into tb_classe (tipo, armadura, habilidade) values ("Orc", "Tecido", "Lanças");

insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Uhlm", "Guardiões", "florestal", 3300, 1650, 3);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Sandrig", "Tunicos", "vulcano", 2500, 3200, 4);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Chovoz", "Tunicos", "montanhês", 1700, 2800, 5);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Arayam", "Tunicos", "vulcano", 1300, 4100, 4);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Wertron", "Excalices", "florestal", 2850, 1400, 5);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Guelig", "Excalices", "montanhês", 4500, 3300, 1);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Zoark", "Armada", "montanhês", 3400, 4100, 3);
insert into tb_personagem (nome, equipe, raca, ataque, defesa, classe_id) values ("Platibos", "Armada", "vulcano", 2950, 2450, 2);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";/
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.tipo like "%Mago%";