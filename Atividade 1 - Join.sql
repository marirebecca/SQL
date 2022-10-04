create database db_generation_game_online;
use db_generation_game_online;

create table  tb_classes(
	id_classe bigint auto_increment,
    primary key(id_classe),
    categoria varchar(45),
    caracteristica varchar(45)
);

create table  tb_personagens(
	id_personagem bigint auto_increment,
    primary key(id_personagem),
    nome varchar(45),
    poder varchar(45),
    ataque int,
    defesa int,
    classes_id_fk bigint,
    foreign key(classes_id_fk) references tb_classes(id_classe)
);

insert into tb_classes
	(categoria, caracteristica)
values
	("Heroi", "Ranger");

insert into tb_classes
	(categoria, caracteristica)
values
	("Vilao", "Barbaro");
    
insert into tb_classes
	(categoria, caracteristica)
values
	("Vilao", "Vikings");
    
insert into tb_classes
	(categoria, caracteristica)
values
	("Heroi", "Arqueiros");

insert into tb_classes
	(categoria, caracteristica)
values
	("Heroi", "Escudeiro");
    
insert into tb_classes
	(categoria, caracteristica)
values
	("Vilao", "Caçador");

insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Paula", "Morfar", 5300, 6000, 6);
    
insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Cris", "Força", 10000, 5000, 1);
    
insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Steph", "Encantamento", 6000,8000, 6);
    
insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Scar", "Mira", 12000, 8000, 4);
    
insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Luis", "Forca", 30000, 15000, 3);

insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Geandro", "Cabelo", 1200, 8000,2);
    
insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Jacque", "Arco", 20000, 40000, 5);
    
insert into tb_personagens
	(nome,
    poder,
    ataque,
    defesa,
    classes_id_fk)
values
	("Rafael", "Bazinga", 13000, 3000, 1);


select * from tb_classes;

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes;

select nome, caracteristica = "Arqueiros" from tb_personagens inner join tb_classes on tb_personagens.id_personagem = tb_classes.id_classe;














