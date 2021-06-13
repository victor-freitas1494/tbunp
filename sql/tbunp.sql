CREATE DATABASE tbunp;

CREATE TABLE tb_usuario(
    id_usuario int,
    nome varchar(120),
    data_nasc date,
    login varchar(20),
    sernha varchar(50),
    cargo varchar(20)
);

ALTER TABLE tb_usuario ADD PRIMARY KEY(id_usuario);

CREATE TABLE tb_eventos(
    id_eventos int,
    nome_evento varchar(120),
    data_evt date,
    fk_usuario int
);

ALTER TABLE tb_eventos ADD PRIMARY KEY(id_eventos);

CREATE TABLE tb_medalhas(
    id_medalhas int,
    med_ouro int,
    med_prata int,
    med_bronze int,
    fk_eventos int
);

ALTER TABLE tb_medalhas ADD PRIMARY KEY(id_medalhas);

CREATE TABLE permissao(
    permissoes varchar(50)
);

ALTER TABLE tb_eventos ADD CONSTRAINT pkUser_fkEventos FOREIGN KEY (fk_usuario) REFERENCES tb_usuario (id_usuario) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE tb_medalhas ADD  CONSTRAINT pkEventos_fkMedalhas FOREIGN KEY (fk_eventos) REFERENCES tb_eventos (id_eventos) ON DELETE RESTRICT ON UPDATE RESTRICT;
