-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/08/2023 às 16:15
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `urna`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bolsovotos`
--

CREATE TABLE `bolsovotos` (
  `id` int(11) NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `bolsovotos`
--

INSERT INTO `bolsovotos` (`id`, `hora`) VALUES
(1, '2023-08-21 13:46:07'),
(2, '2023-08-21 13:49:08'),
(3, '2023-08-21 13:55:46'),
(4, '2023-08-21 13:57:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lulavotos`
--

CREATE TABLE `lulavotos` (
  `id` int(11) NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `lulavotos`
--

INSERT INTO `lulavotos` (`id`, `hora`) VALUES
(1, '2023-08-21 13:33:53'),
(2, '2023-08-21 13:46:19'),
(3, '2023-08-21 13:50:24'),
(4, '2023-08-21 13:50:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `nullvotos`
--

CREATE TABLE `nullvotos` (
  `id` int(11) NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `nullvotos`
--

INSERT INTO `nullvotos` (`id`, `hora`) VALUES
(1, '2023-08-21 13:46:10'),
(2, '2023-08-21 13:48:36'),
(3, '2023-08-21 13:55:47');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bolsovotos`
--
ALTER TABLE `bolsovotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lulavotos`
--
ALTER TABLE `lulavotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `nullvotos`
--
ALTER TABLE `nullvotos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bolsovotos`
--
ALTER TABLE `bolsovotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `lulavotos`
--
ALTER TABLE `lulavotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `nullvotos`
--
ALTER TABLE `nullvotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
