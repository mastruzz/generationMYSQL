use bd_funcionarios;

create table tb_ecommerce(
id bigint auto_increment,
Nome varchar(255),
Marca varchar(255),
Preco double,
Quantidade bigint,
Setor int,
Categoria varchar(255),
Envio varchar(255),
primary key(id)
);

insert into tb_ecommerce (Nome, Marca, preco, Quantidade, Setor, Categoria, Envio) 
values ("Carrinho", "Hotweels", 10.00 , 750, 1, "Brinquedos", "Grátis");
insert into tb_ecommerce(Nome, Marca, preco, Quantidade, Setor, Categoria, Envio) 
values ("Aemodelo", "Candide", 800.00, 100, 4, "Brinquedos", "Paga");
insert into tb_ecommerce (Nome, Marca, Preco, Quantidade, Setor, Categoria, Envio) 
values ("Lapis de cor", "Faber Castell", 12.00, 3020, 3, "Papelaria", "Grátis");
insert into tb_ecommerce (Nome, Marca, Preco, Quantidade, Setor, Categoria, Envio) 
values ("Boneca", "Barbie", 180.00 , 500, 2, "Brinquedos", "paga");
insert into tb_ecommerce (Nome, Marca, Preco, Quantidade, Setor, Categoria, Envio) 
values ("Mascara", "unknow", 15.00 , 150, 3, "Cosméticos", "Grátis");

select * from tb_ecommerce;

select *, preco < 500.00, preco >= 500.00 from tb_ecommerce;

update tb_ecommerce
set marca = ("Candide")
where id = 1;








