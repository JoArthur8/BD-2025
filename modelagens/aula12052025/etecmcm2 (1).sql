-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Maio-2025 às 14:07
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_cat`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'Frios'),
(3, 'Laticínios'),
(4, 'Congelados'),
(5, 'Carnes'),
(6, 'Hortifrut'),
(7, 'Perfumaria'),
(8, 'Bebidas'),
(9, 'Eletroeletrônicos'),
(10, 'Enlatados'),
(11, 'Embalagens');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_prod` int(11) NOT NULL,
  `nome_prod` varchar(255) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_prod`, `nome_prod`, `quantidade`, `preco`, `marca`, `id_cat`) VALUES
(1, 'Sabão em pó', 4, 25.00, 'OMO', 1),
(2, 'Detergente', 20, 3.25, 'Ypê', 1),
(3, 'Mussarela', 100, 55.60, 'Presidente', 3),
(4, 'Iogurte Natural', 100, 3.29, 'Nestle', 3),
(5, 'Papel Alumínio', 50, 7.59, 'Wyda', 11),
(6, 'Papel Toalha', 75, 4.24, 'Scala', 11),
(7, 'Coxa de Frango', 100, 55.60, 'Sadia', 5),
(8, 'Carne moída', 100, 65.99, 'Friboi', 5),
(9, 'Maçã', 100, 5.99, 'Turma da Mônica', 6),
(10, 'Mix de verduras', 100, 7.99, 'Swift', 6),
(11, 'Perfume de Cereja', 100, 75.99, 'Oboticário', 7),
(12, 'Carbon Fiber', 250, 99.99, 'Jequiti', 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `id_cat` (`id_cat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
