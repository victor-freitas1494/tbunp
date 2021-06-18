-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18/06/2021 às 00:38
-- Versão do servidor: 5.6.34
-- Versão do PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tbunp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissao`
--

CREATE TABLE `permissao` (
  `permissoes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `permissao`
--

INSERT INTO `permissao` (`permissoes`) VALUES
('administrador'),
('juiz'),
('atleta');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_evento`
--

CREATE TABLE `tb_evento` (
  `id_evento` int(11) NOT NULL,
  `nome_evento` varchar(120) NOT NULL,
  `data_evt` date NOT NULL,
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_evento`
--

INSERT INTO `tb_evento` (`id_evento`, `nome_evento`, `data_evt`, `fk_usuario`) VALUES
(1, 'Jogos da XXXI Olimpiada\r\nRio 2016', '2016-07-03', 13),
(2, 'Jogos da XXX Olimpiada\r\nLondres 2012', '2012-07-27', 12),
(3, 'Jogos da XXIX Olimpiada\r\nPequim 2008', '2008-07-08', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_medalhas`
--

CREATE TABLE `tb_medalhas` (
  `id_medalha` int(11) NOT NULL,
  `med_ouro` varchar(120) CHARACTER SET utf8 NOT NULL,
  `med_prata` varchar(120) CHARACTER SET utf8 NOT NULL,
  `med_bronze` varchar(120) NOT NULL,
  `fk_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_medalhas`
--

INSERT INTO `tb_medalhas` (`id_medalha`, `med_ouro`, `med_prata`, `med_bronze`, `fk_evento`) VALUES
(7, 'Greg Van Avermaet', 'Jakob Fuglsang', 'Rafal Majka', 1),
(8, 'Alexander Vinokourov', 'Rigoberto Uran', 'Alexander Kristoff', 2),
(9, 'Samuel Sanchez', 'Fabian Cancellara', 'Alexandr Kolobnev', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `data_nasc` date NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_usuario`, `nome`, `data_nasc`, `login`, `senha`, `cargo`) VALUES
(1, 'Victor Freitas', '1994-10-14', 'victorm', 'd41d8cd98f00b204e9800998ecf8427e', 'usuario'),
(2, 'Nicholas Mafra', '2021-04-11', 'nicholasm', '202cb962ac59075b964b07152d234b70', 'usuario'),
(3, 'Arenilton Junior', '2021-06-09', 'areniltonjr', 'd41d8cd98f00b204e9800998ecf8427e', 'usuario'),
(4, 'Ryan Bezerra', '2021-06-02', 'ryanb', '202cb962ac59075b964b07152d234b70', 'usuario'),
(6, 'Greg Van Avermaet', '1985-05-17', 'gregv', '202cb962ac59075b964b07152d234b70', 'atleta'),
(7, 'Jakob Diemer Fuglsang', '1985-03-22', 'jakobd', '202cb962ac59075b964b07152d234b70', 'atleta'),
(8, 'RafaÅ‚ Majk', '1989-09-12', 'rafam', '202cb962ac59075b964b07152d234b70', 'atleta'),
(9, 'Alexander Vinokourov', '1973-09-16', 'alexv', '202cb962ac59075b964b07152d234b70', 'atleta'),
(10, 'Rigoberto UrÃ¡n UrÃ¡n', '1987-01-26', 'rigo', '202cb962ac59075b964b07152d234b70', 'atleta'),
(11, 'Alexander Kristoff', '1987-07-05', 'alexk', '202cb962ac59075b964b07152d234b70', 'atleta'),
(12, 'Mik Basi', '1966-05-21', 'mikbasi', '202cb962ac59075b964b07152d234b70', 'juiz'),
(13, 'Martinho Nobre dos Santos', '1955-11-11', 'martinho', '202cb962ac59075b964b07152d234b70', 'juiz'),
(14, 'admin', '0000-00-00', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrador');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `idUsuario-fkEvento` (`fk_usuario`);

--
-- Índices de tabela `tb_medalhas`
--
ALTER TABLE `tb_medalhas`
  ADD PRIMARY KEY (`id_medalha`),
  ADD KEY `idMedalha-fkEventos` (`fk_evento`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_medalhas`
--
ALTER TABLE `tb_medalhas`
  MODIFY `id_medalha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tb_evento`
--
ALTER TABLE `tb_evento`
  ADD CONSTRAINT `idUsuario-fkEvento` FOREIGN KEY (`fk_usuario`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Restrições para tabelas `tb_medalhas`
--
ALTER TABLE `tb_medalhas`
  ADD CONSTRAINT `idMedalha-fkEventos` FOREIGN KEY (`fk_evento`) REFERENCES `tb_evento` (`id_evento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
