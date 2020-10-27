create database db_ecommerce;
use db_ecommerce;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
created varchar(255),
modified varchar(255),
primary key(id)

);

insert into tb_categoria(nome, created, modified)
	values("Roupas", "27/10/2020",null);
insert into tb_categoria(nome, created, modified)
	values("Cosmeticos", "27/10/2020",null);
insert into tb_categoria(nome, created, modified)
	values("Eletronicos", "27/10/2020",null);
insert into tb_categoria(nome, created, modified)
	values("Papelaria", "27/10/2020",null);
insert into tb_categoria(nome, created, modified)
	values("Brinquedos", "27/10/2020",null);
    
create table tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
quantidade bigint,
preco double,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Camiseta", "Hanglose", 100, 20.00, 1);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Calça", "Versacce", 100, 3000.00, 1);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Moleton", "Hanglose", 100, 120.00, 1);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Regata", "Hanglose", 100, 15.00, 1);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Perfume", "212", 100, 300.00, 2);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Perfume", "HugoBoss", 100, 1100.00, 2);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Brincos", "Unknow", 100, 5.00, 2);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Delineador", "unknow", 100, 50.00, 2);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Smartphone", "Samsung", 100, 2500.00, 3);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Smartwatch", "Xiaomi", 100, 1200.00, 3);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("caderno", "Tilibra", 100, 40.00, 4);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Sulfite", "Seninha", 100, 300.00, 4);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Lápis de cor", "Faber Castell", 100, 50.00, 4);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("avião", "Candide", 100, 300.00, 5);
insert into tb_produto(nome,marca, quantidade, preco, categoria_id)
	values("Carrinho", "Hotweels", 100, 10.00, 5);
    
    
select * from tb_produto where preco > 2000;
select * from tb_produto where preco > 1000 && preco < 2000;
select * from tb_produto where nome like "%c%";
    










