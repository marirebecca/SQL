create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	tb_categorias bigint auto_increment,
    primary key(tb_categorias),
    sabor varchar(255),
    borda varchar(255)
);

create table  tb_pizza(
	tb_pizza bigint auto_increment,
    primary key(tb_pizza),
    nome varchar (255),
    codigo_pizza varchar (255),
    tamanho varchar (255),
    preco decimal (4,2),
    quantidade int,
    pizza_id_fk bigint,
    foreign key(pizza_id_fk) references tb_categorias(tb_categorias)
);

insert into tb_categorias
	(sabor, borda)
values
	("Salgada", "Borda de Catupiry");
    
 insert into tb_categorias
	(sabor, borda)
values
	("Salgada", "Borda de Cheddar");
    
insert into tb_categorias
	(sabor, borda)
values
	("Doce", "Borda de Brigadeiro");
    
insert into tb_categorias
	(sabor, borda)
values
	("Doce", "Borda de Doce de Leite");

insert into tb_categorias
	(sabor, borda)
values
	("Salgada", "Borda Sem Recheio");

insert into tb_categorias
	(sabor, borda)
values
	("Doce", "Borda Sem Recheio");

select * from tb_categorias;

insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Portuguesa", "1", "Grande", 45.50, 1, 1);
    
insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Frango com Catupiry", "2", "Media", 50, 2, 3);
    
insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Brigadeiro", "3", "Pequena", 55, 1, 2);
    
insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Chocolate com Morango", "4", "Media", 60, 3, 4);
    
insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Atum com Mussarela", "5", "Grande", 43.50, 1, 5);
    
 insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Nutella", "6", "Pequena", 60, 1, 6);   
    
insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Quatro Queijos", "7", "Grande", 48.50, 2, 1);
    
insert into tb_pizza
	(nome,
    codigo_pizza,
    tamanho,
    preco,
    quantidade,
    pizza_id_fk)
values
	("Calaberesa", "8", "Grande", 54, 5, 3);
    
select * from tb_pizza;

SELECT * FROM tb_pizza WHERE PRECO > 45;

SELECT * FROM tb_pizza WHERE PRECO > 50 AND PRECO < 100;

SELECT * FROM tb_pizza WHERE NOME LIKE "M%";

SELECT * FROM tb_pizza INNER JOIN tb_categorias ON
tb_pizza.pizza_id_fk = tb_categorias.tb_categorias;