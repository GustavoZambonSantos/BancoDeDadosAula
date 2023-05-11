create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
		id bigint auto_increment,
		papel varchar (50) not null,
		nacionalidade varchar(50) not null,
			primary key (id)
			);
            
create table tb_personagens (
		id bigint auto_increment primary key,
		nome varchar(50) not null,
		idade int,
		poder_de_ataque int not null,
		poder_de_defesa int not null,
		fk_classes bigint,
		constraint foreign key(fk_classes) references tb_classes(id)
		);
        
        show tables;
        
        insert into tb_classes (papel,nacionalidade) values ("Guerreiro","EUA");
		insert into tb_classes (papel,nacionalidade) values ("Defensor","BR");
		insert into tb_classes (papel,nacionalidade) values ("Arqueiro","BR");
		insert into tb_classes (papel,nacionalidade) values ("Guerreiro","BR");
		insert into tb_classes (papel,nacionalidade) values ("Defensor","EUA");
        
        select * from tb_classes;
      
      update tb_classes set nacionalidade = "EUA"
      where id = 4;
         update tb_classes set papel = "arqueiro"
      where id = 3;
      
      
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes )values ("Ice Cube",50,2500,1500,1);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values ("Snoop Dogg",53,5000,4500,1);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values("Mano Brown",53,78000,8000,4);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values("Luan Santana",30,1200,999,2);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values ("Sandy e Junior",38,1800,2500,3);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values ("C Hariel",24,3500,1900,4);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values("Bonnie Tyler",60,1800,1500,1);
	insert into tb_personagens(nome,idade, poder_de_ataque,poder_de_defesa,fk_classes)values ("Pitty",42,5000,3500,3);
    
    select * from tb_personagens;
    
    select * from tb_personagens
	where poder_de_ataque > 2000;
    
    select * from tb_personagens
	where poder_de_defesa between 1000 and 2000;
    
    select * from tb_personagens
where nome like "C%";

select nome, idade, poder_de_ataque,poder_de_defesa,papel,nacionalidade from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.fk_classes;

select nome, idade, poder_de_ataque,poder_de_defesa,papel from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.fk_classes
where tb_classes.id = 3;



    
    
    
