-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 11-Jun-2021 às 03:56
-- Versão do servidor: 5.6.34
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_eventos`
--

CREATE TABLE `tb_eventos` (
  `id_eventos` int(11) NOT NULL,
  `fk_usuarios` int(11) NOT NULL,
  `nome_evento` varchar(120) NOT NULL,
  `data_evt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_eventos`
--

INSERT INTO `tb_eventos` (`id_eventos`, `fk_usuarios`, `nome_evento`, `data_evt`) VALUES
(2, 2, 'rn', '2021-06-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_medalhas`
--

CREATE TABLE `tb_medalhas` (
  `id_medalhas` int(11) NOT NULL,
  `fk_eventos` int(11) NOT NULL,
  `med_ouro` int(11) NOT NULL,
  `med_prata` int(11) NOT NULL,
  `med_bronze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_medalhas`
--

INSERT INTO `tb_medalhas` (`id_medalhas`, `fk_eventos`, `med_ouro`, `med_prata`, `med_bronze`) VALUES
(2, 2, 2, 1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `data_nasc` date NOT NULL,
  `login` varchar(12) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuarios`, `nome`, `data_nasc`, `login`, `senha`, `cargo`) VALUES
(1, 'victor', '0000-00-00', 'victorm', '202cb962ac59075b964b07152d234b70', ''),
(2, 'teste', '2021-06-09', 'asdf', '912ec803b2ce49e4a541068d495ab570', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_eventos`
--
ALTER TABLE `tb_eventos`
  ADD PRIMARY KEY (`id_eventos`),
  ADD KEY `fk_usuarios` (`fk_usuarios`);

--
-- Indexes for table `tb_medalhas`
--
ALTER TABLE `tb_medalhas`
  ADD PRIMARY KEY (`id_medalhas`),
  ADD KEY `fk_eventos` (`fk_eventos`);

--
-- Indexes for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_eventos`
--
ALTER TABLE `tb_eventos`
  MODIFY `id_eventos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_medalhas`
--
ALTER TABLE `tb_medalhas`
  MODIFY `id_medalhas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_eventos`
--
ALTER TABLE `tb_eventos`
  ADD CONSTRAINT `tb_eventos_ibfk_1` FOREIGN KEY (`fk_usuarios`) REFERENCES `tb_usuarios` (`id_usuarios`);

--
-- Limitadores para a tabela `tb_medalhas`
--
ALTER TABLE `tb_medalhas`
  ADD CONSTRAINT `tb_medalhas_ibfk_1` FOREIGN KEY (`fk_eventos`) REFERENCES `tb_eventos` (`id_eventos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
