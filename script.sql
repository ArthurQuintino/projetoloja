create database EcomLoja1;

use EcomLoja1;

-- CRIANDO AS TABELAS DO BANCO
create table produto(
Id int primary key auto_increment,
Nome varchar(50),
Descricao varchar(100),
Preco decimal(10,2),
ImageUrl varchar(255),
Estoque int

);

create table pedido(
Id int primary key auto_increment ,
DataPedido datetime,
Total decimal(10,2),
Status varchar(50),
Endereco varchar(100),
FormaPagamento varchar(100),
Frete decimal (10,2)
);


create table itemPedido(
Id int primary key auto_increment ,
PedidoId int,
ProdutoId int,
Quantidade int,
PrecoUnitario decimal(10,2)
);

insert into produto(Nome,Descricao,Preco,ImageUrl,Estoque)values('Jogo1','Descricao Jogo-1',150.00, 'images/jogo1.jpg',10);
insert into produto(Nome,Descricao,Preco,ImageUrl,Estoque)values('Jogo2','Descricao Jogo-2',50.00, 'images/jogo2.jpg',10);
insert into produto(Nome,Descricao,Preco,ImageUrl,Estoque)values('Jogo3','Descricao Jogo-3',250.00, 'images/jogo3.jpg',10);

select * from produto;
select * from pedido;
select * from itemPedido;

