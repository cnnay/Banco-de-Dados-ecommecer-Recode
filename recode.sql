



create table tb_produto(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nm_produto varchar(50) not null,
dc_descricao varchar(200) not null,
pc_preco Decimal not null,
im_imagem mediumblob NOT NULL);

create table tb_pedidos(
id_pedidos INT PRIMARY KEY AUTO_INCREMENT,
nm_cliente VARCHAR(20) NOT NULL,
ed_endereco VARCHAR(200)NOT NULL,
nr_telefone VARCHAR(11),
nm_produto VARCHAR(50) NOT NULL references tb_produto(nm_produto),
vl_unitario DECIMAL NOT NULL,
qt_quantidade_produtos INT NOT NULL, 
vl_total DECIMAL NOT NULL);

INSERT INTO tb_produto (id_produto, nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES (135899, 'lava-louça', 'Lava-louças Brastemp Serviços - Branco', 3925.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\louca_Prata.jpeg");


INSERT INTO tb_produto (id_produto, nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES (135899, 'lava-louça', 'Lava-louças Brastemp Serviços - Branco', 3925.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\louca_Prata.jpeg");

