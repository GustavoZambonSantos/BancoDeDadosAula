create database e_commerce;

	use e_commerce;
    
create table produtos (
id bigint auto_increment primary key,
nome varchar(50) not null,
valor decimal not null,
quantidade int not null,
vendedor varchar(50) not null
);


insert into produtos (nome,valor,quantidade,vendedor) values("Fone de ouvido",25.00,50,"Aegon Targaryen");
	insert into produtos (nome,valor,quantidade,vendedor) values("Televisão",1800.00,80,"Lyanna Stark");
		insert into produtos (nome,valor,quantidade,vendedor) values("Air Fryer",450.00,100,"Tyrion Lannister");
			insert into produtos (nome,valor,quantidade,vendedor) values("Iphone 13",6000.00,150,"Aegon Targaryen");
				insert into produtos (nome,valor,quantidade,vendedor) values("Geladeira",2500.00,50,"Lyanna Stark");
					insert into produtos (nome,valor,quantidade,vendedor) values("Abajur",350,200,"Robert Baratheon");
						insert into produtos (nome,valor,quantidade,vendedor) values("Livro Fogo e Sangue",89.90,100,"Aegon Targaryen");
							insert into produtos (nome,valor,quantidade,vendedor) values("Guarda Roupa",900.00,40,"Tyrion Lannister");

select * from produtos;

select nome, valor from produtos
where valor > 500;

select nome, valor from produtos
where valor < 500;

update produtos set vendedor = "John Snow"
	where id = 4;
