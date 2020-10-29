
create database ecommerce;


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

INSERT INTO tb_produto ( nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lava-louça', 'Lava-louças Brastemp Serviços - Branco', 3925.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\louca_Prata.jpeg");

INSERT INTO tb_produto ( nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('geladeira', 'Geladeira Frost Free Side Brastemp Branca', 5.020.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\
geladeira.jpeg");

INSERT INTO tb_produto ( nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('geladeira', 'Geladeira Frost Free Side Inverse', 4.840.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\
geladeira.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ( 'fogão', 'Fogão 4 Bocas Consul Branco',  590.00,  "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\fogão.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ( 'fogão', 'Fogão 4 Bocas Consul Branco Simples', 390.00,  "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\fogão_simples.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('fogão', 'Fogão 4 Bocas Consul Branco', 690.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas_preto.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('microondas', 'Micro-ondas Consul 32Litros Inox 220V',  680.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\microondas.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lavadoura de roupas', 'Lava Brastemp VC4 10,5Kg Branco 220V', 2.380.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lavadoura de roupas', 'Lava e Seca LG VC2 11kg Branca 220V', 7.460.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas_branca.jpeg");

INSERT INTO tb_produto (nm_produto, dc_descricao, pc_preco, im_imagem) 
VALUES ('lavadoura de roupas', 'Lava e Seca LG VC2 11kg preto 220V', 7.460.00, "D:\developer\frontend\projetos_carla\ecommerce_recode\imagem\lavadoura_de_roupas_preto.jpeg");


INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ( 'joão pedro', 'AV: pedro chaves, 13', '111234562', 'fogão', 980.00,  2, 2.380.00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ('vitor', 'rua: joão chaves, 7 ', '119558874', 'geladeira', 3.925.00, 3, 11.775);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ('lion', 'rua: cachoeira, 50', '966335875', 'lavadoura de roupas' 7.460.00, 2, 14.460);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ('samuel', 'rua: ovelhas, 98', '795632155', 'microondas',  7.460.00, 3, 16.840,00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ( 'vick', 'AV: augusta, 8', '258999999', 'geladeira', 4.840,00, 1, 4.840,00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ( 'ester', 'rua: rua uva, 4',  '799654220', 'fogão',  980.00,  3,  8.940,00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ( 'carla', 'AV: paulista,  8',  '588888888', 'lava-louça', 4.600.00  2, 4.840,00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ( 'flavia', 'AV: pedro, 8',  '788898888', 'lava-louça', 3.600.00  2, 4.840,00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ( 'fernando', 'AV: acarirema,4',  '955888888', 'geladeira', 3.600.00  2, 4.840,00);

INSERT INTO tb_pedidos (nm_cliente, ed_endereco, nr_telefone, nm_produto, vl_unitario, qt_quantidade_produtos, vl_total) 
VALUES ('bruno', 'rua: uva, 17', '976335875', 'lavadoura de roupas', 7.460.00, 2, 14.460);


