-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/10/2023 às 01:04
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.2.0

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
(1, '2023-09-28 18:12:21'),
(2, '2023-09-28 18:12:52'),
(3, '2023-09-28 18:15:04'),
(4, '2023-09-28 18:25:24'),
(5, '2023-10-17 16:30:44'),
(6, '2023-10-17 16:40:07'),
(7, '2023-10-17 16:40:53'),
(8, '2023-10-17 16:50:57'),
(9, '2023-10-17 16:51:42'),
(10, '2023-10-17 16:52:21'),
(11, '2023-10-17 16:52:26'),
(12, '2023-10-17 16:52:31'),
(13, '2023-10-17 16:52:58'),
(14, '2023-10-17 16:54:18'),
(15, '2023-10-17 16:54:28'),
(16, '2023-10-17 16:54:45'),
(17, '2023-10-17 16:54:52'),
(18, '2023-10-18 00:48:47'),
(19, '2023-10-18 00:49:38'),
(20, '2023-10-18 00:50:33'),
(21, '2023-10-18 00:56:27'),
(22, '2023-10-18 17:18:32'),
(23, '2023-10-18 17:40:08'),
(24, '2023-10-18 19:30:39'),
(25, '2023-10-18 19:31:22'),
(26, '2023-10-18 19:31:39'),
(27, '2023-10-18 19:31:59'),
(28, '2023-10-18 19:34:51'),
(29, '2023-10-18 19:34:53'),
(30, '2023-10-18 19:34:54'),
(31, '2023-10-18 19:34:55'),
(32, '2023-10-18 19:34:55'),
(33, '2023-10-18 19:34:55'),
(34, '2023-10-18 19:34:56'),
(35, '2023-10-18 19:34:56'),
(36, '2023-10-18 19:34:56'),
(37, '2023-10-18 19:34:56'),
(38, '2023-10-18 19:34:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `brancovotos`
--

CREATE TABLE `brancovotos` (
  `id` int(11) NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `brancovotos`
--

INSERT INTO `brancovotos` (`id`, `hora`) VALUES
(1, '2023-10-18 23:02:37'),
(2, '2023-10-18 23:02:48');

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
(1, '2023-09-28 18:16:55'),
(2, '2023-09-28 18:23:21'),
(3, '2023-10-17 21:27:06'),
(4, '2023-10-18 17:40:55'),
(5, '2023-10-18 19:31:09');

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
(1, '2023-10-18 17:44:11'),
(2, '2023-10-18 17:45:37'),
(3, '2023-10-18 17:45:49'),
(4, '2023-10-18 19:27:29'),
(5, '2023-10-18 23:02:57'),
(6, '2023-10-18 23:03:06');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bolsovotos`
--
ALTER TABLE `bolsovotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `brancovotos`
--
ALTER TABLE `brancovotos`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `brancovotos`
--
ALTER TABLE `brancovotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lulavotos`
--
ALTER TABLE `lulavotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `nullvotos`
--
ALTER TABLE `nullvotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
