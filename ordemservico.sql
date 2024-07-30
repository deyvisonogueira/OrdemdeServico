-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/07/2024 às 02:44
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ordemservico`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(11) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `perfil` int(11) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cod`, `nome`, `email`, `senha`, `endereco`, `numero`, `bairro`, `cidade`, `telefone`, `status`, `perfil`, `data`) VALUES
(4, 'Danilo Alves Alvarenga', 'danilo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Avenida Dolores Silva', '335', 'Centro', 'Aguanil', '(35) 99984-9594', 2, 2, 24),
(5, 'Mariany Alves', 'mary@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Avenida Dolores Silva', '335', 'Centro', 'Aguanil', '(35) 99984-9594', 1, 2, 24),
(10, 'Dayane Núbia', 'deyvisonogueira@gmail.com', '628b7db04235f228d40adc671413a8c8', 'rua day', '10', 'DayDay', 'Machado', '(35) 9999-9975', 1, 2, 24),
(11, 'Isabelle', 'Isa@email.com.br', 'f9dd51ebcb2f3fa564b7a9e77b5a59af', 'IsaStreet', '100', 'Isaland', 'Machado', '(35) 9999-9975', 1, 2, 24),
(12, 'Dave', 'dave@email.com', '1610838743cc90e3e4fdda748282d9b8', 'Rua D', '10', 'Deck', 'Denver', '(35) 9999-9976', 1, 2, 24);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ordem`
--

CREATE TABLE `ordem` (
  `cod` int(11) NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `cod_terceirizado` int(11) NOT NULL,
  `cod_servico` int(11) NOT NULL,
  `data_servico` date NOT NULL,
  `status` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ordem`
--

INSERT INTO `ordem` (`cod`, `cod_cliente`, `cod_terceirizado`, `cod_servico`, `data_servico`, `status`, `data`) VALUES
(10, 5, 8, 5, '2022-07-16', 2, '2022-07-15'),
(11, 4, 7, 4, '2022-07-17', 3, '2024-07-25'),
(12, 5, 8, 5, '2022-07-21', 3, '2022-07-15'),
(13, 4, 7, 4, '2022-07-19', 2, '2024-07-23'),
(20, 11, 11, 10, '2024-08-30', 2, '2024-07-26'),
(21, 5, 8, 11, '2024-07-24', 3, '2024-07-25'),
(22, 12, 11, 11, '2024-08-02', 2, '2024-07-26'),
(23, 4, 11, 4, '2024-07-27', 2, '2024-07-26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `cod` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`cod`, `nome`, `valor`, `data`) VALUES
(4, 'Lavar Carro', 56, '2024-07-30'),
(5, 'Limpar Piscina', 70, '2022-07-14'),
(8, 'Manutenção máquina de lavar', 175, '2024-07-11'),
(9, 'Cortar grama', 50, '2024-07-23'),
(10, 'Fazer o TCC', 300, '2024-07-25'),
(11, 'ERP', 1050, '2024-07-25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `terceirizado`
--

CREATE TABLE `terceirizado` (
  `cod` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `perfil` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `terceirizado`
--

INSERT INTO `terceirizado` (`cod`, `nome`, `email`, `telefone`, `senha`, `status`, `perfil`, `data`) VALUES
(7, 'Dalyla Alvarenga ', 'dalylalvarenga@gmail.com', '(35) 99984-9594', 'e10adc3949ba59abbe56e057f20f883e', 1, 3, '2024-07-26'),
(8, 'Maria Aparecida', 'maria@gmail.com', '(35) 99984-9594', 'e10adc3949ba59abbe56e057f20f883e', 1, 3, '2022-07-14'),
(11, 'Dayane Núbia', 's4s4@gmail.com', '(35) 9999-9975', '202cb962ac59075b964b07152d234b70', 1, 3, '2024-07-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `perfil` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`cod`, `nome`, `senha`, `email`, `perfil`, `status`, `data`) VALUES
(35, 'Deyvison Nogueira', '5864a445946e1996ef830460c102b23e', 'deyvisonogueira@gmail.com', 1, 1, '2024-07-25'),
(36, 'Luana', '654e4dc5b90b7478671fe6448cab3f32', 'luana@teste.com.br', 1, 1, '2024-07-25');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `ordem`
--
ALTER TABLE `ordem`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `foreign_key_cod_cliente` (`cod_cliente`),
  ADD KEY `foreign_key_cod_servico` (`cod_servico`),
  ADD KEY `foreign_key_cod_terceirizado` (`cod_terceirizado`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `terceirizado`
--
ALTER TABLE `terceirizado`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `ordem`
--
ALTER TABLE `ordem`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `terceirizado`
--
ALTER TABLE `terceirizado`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ordem`
--
ALTER TABLE `ordem`
  ADD CONSTRAINT `foreign_key_cod_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod`),
  ADD CONSTRAINT `foreign_key_cod_servico` FOREIGN KEY (`cod_servico`) REFERENCES `servico` (`cod`),
  ADD CONSTRAINT `foreign_key_cod_terceirizado` FOREIGN KEY (`cod_terceirizado`) REFERENCES `terceirizado` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
