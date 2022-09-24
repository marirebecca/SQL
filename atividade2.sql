create database database_servico_rh;

use database_servico_rh;

create table colaboradores(
	id bigint auto_increment,
    primary key(id),
    nome varchar(250),
    cargo varchar(250),
    salario double,
    cpf bigint(14),
    celular bigint(14)
);

insert into colaboradores 
	(nome, cargo, salario, cpf, celular)
values 
	("Mariana", "Desenvolvedor", 5000.00, 34567890145, 11954362910);
    
insert into colaboradores 
	(nome, cargo, salario, cpf, celular)
values
	("Debora", "Educador Fisico", 6000.00, 12345678910, 119345635967);

insert into colaboradores
	(nome, cargo, salario, cpf, celular)
values
	("Cristaly", "Desenvolvedor Full Stack", 5500.00, 34525623560, 11987652345);
    
insert into colaboradores
	(nome, cargo, salario, cpf, celular)
values
	("Stefani", "Desenvolvedor Full Stack", 4500.00, 65820425839, 11965402957);

insert into colaboradores
	(nome, cargo, salario, cpf, celular)
values
	("Paula", "Desenvolvedor Full Stack", 4800.00, 94758395729, 11947364856);

select * from colaboradores;

select salario from colaboradores where salario >= 2000;

select salario from colaboradores where salario <= 2000;

update colaboradores set salario = 1500.00 where id = 5;
