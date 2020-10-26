create database bd_funcionarios;
use bd_funcionarios;

create table tb_dados_funcionarios( 
id bigint auto_increment, 
nome varchar(255) not null,
 salario bigint not null, 
 cargo varchar(255) not null,
 ferias boolean,
 primary key(id)
 );

select * from tb_dados_funcionarios;

insert into tb_dados_funcionarios ( id, nome, salario, cargo, ferias) values (1, "Ricardo", 1200, "Zelador", false);

insert into tb_dados_funcionarios ( nome, salario, cargo, ferias) values ( "Paulo", 3000, "Contador", false);

insert into tb_dados_funcionarios ( nome, salario, cargo, ferias) values ( "marta", 2600, "Desenvolvedor(a) Java Jr.", false);

insert into tb_dados_funcionarios ( nome, salario, cargo, ferias) values ( "Pietro", 2600, "Desenvolvedor(a) Java Jr.", true);

insert into tb_dados_funcionarios ( nome, salario, cargo, ferias) values ( "Carlos", 30000, "CEO", false);

select *, salario >= 2000 from tb_dados_funcionarios;
select *, salario < 2000 from tb_dados_funcionarios;

