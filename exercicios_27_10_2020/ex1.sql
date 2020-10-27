
create database db_RH2;
use db_RH2;
create table tb_cargo(
id bigint auto_increment,
funcao varchar(255),
entrada varchar(255),
saida varchar(255),
primary key(id)
);


insert into tb_cargo(funcao, entrada, saida)
	values("Pintor", "8:00", "17:00");
insert into tb_cargo(funcao, entrada, saida) 
	values("Pedreiro", "8:00", "17:00");
insert into tb_cargo(funcao, entrada, saida)
	values("Eletricista", "8:00", "17:00");
insert into tb_cargo(funcao, entrada, saida) 
	values("Ajudante de pedreiro",  "8:00", "17:00");
insert into tb_cargo(funcao, entrada, saida) 
	values("Encarregado", "Modular", "Modular");
    
select * from tb_funcionario;

create table tb_funcionario(
id bigint auto_increment,
Nome varchar(255),
salario double,
ferias boolean,
cargo_id bigint,
primary key(id),
foreign key(cargo_id) references tb_cargo (id)
);

insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Rodrigo", 1200, false, 4);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Marcio", 3000, false, 2);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Thomas", 3000, false, 3);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Patrick", 1200, true, 4);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Jean", 2500, false, 1);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Maura", 3000, false, 3);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Ricardo", 3500, true, 5);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Everton", 4000, false, 2);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Mariana", 3000, false, 1);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Penny", 1200, false, 4);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Cícero", 3000, true, 2);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Plínio", 3000, false, 3);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Carlos", 8000, false, 5);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Ariane", 3000, false, 1);
insert into tb_funcionario(nome, salario, ferias, cargo_id)
	values("Rita", 3000, false, 1);
    
select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario > 1000 && salario < 2000;
select * from tb_funcionario where nome like "%c%";


