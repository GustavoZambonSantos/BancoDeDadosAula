create database recursos_humanos;
use recursos_humanos;

create table funcionarios (
	id bigint auto_increment primary key,
	nome varchar(50) not null,
	idade int not null,
	cargo varchar(50) not null,
	salario decimal not null
);

insert into funcionarios (nome, idade,cargo,salario) values ("Gustavo Santos",29,"Analista Senior",4500.00);
insert into funcionarios (nome, idade,cargo,salario) values ("Raphael Veiga",27,"Gerente",8500.00);
insert into funcionarios (nome, idade,cargo,salario) values ("Sirius Black",40,"Coordenador",14500.00);
insert into funcionarios (nome, idade,cargo,salario) values ("Anne Frank",18,"Estagiaria",2500.00);
insert into funcionarios (nome, idade,cargo,salario) values ("José Ferreira Neto",41,"Analista Senior",5000.00);

select * from funcionarios;

update funcionarios set salario = 1500.00
where id = 4;

select nome, salario from funcionarios
where salario > 2000.00;

select nome, salario from funcionarios
where salario < 2000.00;

update funcionarios set cargo = "Analista Sênior 2"
where id = 5;
