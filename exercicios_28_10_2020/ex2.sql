create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
setor varchar(255),
primary key(id)
);

insert into tb_categoria(nome, setor)
	values("Banheiro", "B");
insert into tb_categoria(nome, setor)
	values("Quarto", "B");
insert into tb_categoria(nome, setor)
	values("Sala", "A");
insert into tb_categoria(nome, setor)
	values("Pintura", "C");
insert into tb_categoria(nome, setor)
	values("Pisos", "C");
    
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
	values("Sanitario", 120.00, 120, 1);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Lavatorio", 150.00, 120, 1);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Cama", 1300.00, 120, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Criado mudo", 100.00, 120, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Guarda-Roupa", 800.00, 120, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Sofá", 1200.00, 120, 3);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Tinta esmalte PQ.", 40.00, 120, 4);
insert into tb_produto(nome, preco, quantidade, categoria_id)
	values("Tinta acrílica GD.", 250.00, 120, 5);
    
select * from tb_produto where preco >= 50;
select * from tb_produto where preco > 3 && preco <50;
select * from tb_produto where nome like "%co%";
select * from tb_produto where categoria_id = 1;

select tb_produto.nome, tb_produto.preco,tb_categoria.nome, tb_produto.quantidade from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

