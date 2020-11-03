create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
setor varchar(255),
primary key(id)
);

insert into tb_categoria(nome, setor)
	values("Bovino", "B");
insert into tb_categoria(nome, setor)
	values("Suíno", "B");
insert into tb_categoria(nome, setor)
	values("Aves", "A");
insert into tb_categoria(nome, setor)
	values("Pertences feijoada", "C");
insert into tb_categoria(nome, setor)
	values("outros", "C");
    
create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal,
quantidade int,
categoria_id bigint,
primary key (id),
foreign key(categoria_id) 
	references tb_categoria (id)
);

insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Asa", 15.00, 120, 3);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Peito", 15.00, 120, 3);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Costela", 35.00, 120, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Orelha", 15.00, 120, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Bacon", 15.00, 120, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Contra-filé", 30.00, 120, 1);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Pertences", 20.00, 120, 4);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Refrigerante", 5.00, 120, 5);
    
select * from tb_produto where preco >= 50;
select * from tb_produto where preco > 3 && preco <50;
select * from tb_produto where nome like "%co%";
select * from tb_produto where categoria_id = 3;

select tb_produto.nome, tb_produto.preco,tb_categoria.nome, tb_produto.quantidade from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

