-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14-Ago-2023 às 20:02
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pensamentosbd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `toughts`
--

CREATE TABLE `toughts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `toughts`
--

INSERT INTO `toughts` (`id`, `title`, `createdAt`, `updatedAt`, `UserId`) VALUES
(3, 'Como criar um banco de dados do 0', '2023-08-14 18:28:57', '2023-08-14 18:28:57', 2),
(6, 'Banco de dados', '2023-08-14 18:59:23', '2023-08-14 18:59:23', 3),
(13, 'Apresentando o trabalho ', '2023-08-14 19:36:20', '2023-08-14 19:46:38', 1),
(14, 'Criando um novo pensamento', '2023-08-14 19:38:31', '2023-08-14 19:38:31', 7),
(15, 'Pensando em nada', '2023-08-14 19:46:24', '2023-08-14 19:46:24', 1),
(16, 'Vou fazer gol', '2023-08-14 19:48:05', '2023-08-14 19:48:05', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Tulio Roberto', 'srtulio17@gmail.com', '$2b$10$M24EAKxvIWywm8BeejQ/deMuhntVq6X53w3YSPS9im6D3rYFV5e4i', '2023-08-14 18:26:03', '2023-08-14 18:26:03'),
(2, 'Mateus da Silva Costa', 'mateus.sc1@aluno.ufop.edu.br', '$2b$10$4B0k4EzW.RWynOLyTKlIsu2Lk0XiHHR.FfYEJEqBGgB.9jkwugYgu', '2023-08-14 18:28:31', '2023-08-14 18:28:31'),
(3, 'Bruno Rabello', 'bruno@gmail.com', '$2b$10$jHMYiXJCLA6r6Qm/UkO5ZO2lR4Gj9tYAR88vEBivo0bFBKG5vHS3y', '2023-08-14 18:58:39', '2023-08-14 18:58:39'),
(7, 'Allison Diogo', 'allison@gmail.com', '$2b$10$mTIwhbC1YYFE.sXBkU3Yk..pRmlE8iv8TPev6imgdQ09dWn0PmzUa', '2023-08-14 19:38:03', '2023-08-14 19:38:03'),
(8, 'Hulk Paraíba', 'hulk@gmai.com', '$2b$10$JcPunCOamu5ljY7KW8jwY.6Vr8gFW8DKZdaJYuOLKQzwGEp0Lp7MW', '2023-08-14 19:47:44', '2023-08-14 19:47:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `toughts`
--
ALTER TABLE `toughts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `toughts`
--
ALTER TABLE `toughts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `toughts`
--
ALTER TABLE `toughts`
  ADD CONSTRAINT `toughts_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
