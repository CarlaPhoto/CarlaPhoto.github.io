-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Mar-2021 às 16:44
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_fotografia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `designacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `designacao`) VALUES
(1, 'Artística'),
(2, 'Retrato'),
(3, 'Culinária'),
(4, 'Paisagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotografia`
--

CREATE TABLE `fotografia` (
  `id_foto` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `nome_foto` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `destaque` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotografia`
--

INSERT INTO `fotografia` (`id_foto`, `descricao`, `nome_foto`, `id_categoria`, `destaque`) VALUES
(1, 'Eu', '1.jpg', 2, 3),
(2, 'Artística', '2.jpg', 1, 1),
(3, 'Artística', '3.jpg', 1, 2),
(4, 'Eu', '4.jpg', 2, 1),
(5, 'Culinária', '5.jpg', 3, 2),
(6, 'Culinária', '6.jpg', 3, 1),
(7, 'Paisagem', '7.jpg', 4, 3),
(8, 'Paisagem', '8.jpg', 4, 1),
(9, 'Eu', '9.jpg', 2, 3),
(10, 'Eu', '10.jpg', 2, 1),
(11, 'Artística', '11.jpg', 1, 2),
(12, 'Culinária', '12.jpg', 3, 2),
(13, 'Culinária', '13.jpg', 3, 3),
(14, 'Paisagem', '14.jpg', 4, 2),
(15, 'Paisagem', '15.jpg', 4, 1),
(16, 'Paisagem', '16.jpg', 4, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `fotografia`
--
ALTER TABLE `fotografia`
  ADD PRIMARY KEY (`id_foto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fotografia`
--
ALTER TABLE `fotografia`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
