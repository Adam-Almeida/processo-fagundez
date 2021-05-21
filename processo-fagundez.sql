-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20-Maio-2021 às 17:22
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `processo-fagundez`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `RA` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `endereco` varchar(160) NOT NULL,
  `cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`RA`, `nome`, `endereco`, `cidade`) VALUES
(1, 'Adam', 'Rua das Flores', 'Curitiba'),
(2, 'Isadora', 'Rua dos Passaros', 'Curitiba'),
(3, 'Alessandro', 'Rua das Flores', 'Curitiba'),
(4, 'Maria', 'Rua dos Macacos', 'Curitiba'),
(5, 'Jonas', 'Rua das Amoras', 'Curitiba'),
(6, 'Pedro', 'Rua Cinquenta e Dois', 'Curitiba'),
(7, 'Wallace', 'Avenida Jardim', 'Curitiba'),
(8, 'Richard', 'Avenida 45 de Novembro', 'Curitiba'),
(9, 'Suzana', 'Rua dos Passaros', 'Curitiba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `cod_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(45) NOT NULL,
  `carga_horaria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`cod_disciplina`, `nome_disciplina`, `carga_horaria`) VALUES
(1, 'Matemática', 60),
(2, 'Português', 55),
(3, 'Geografia', 75);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `RA` int(11) NOT NULL,
  `cod_disciplina` int(11) NOT NULL,
  `cod_turma` int(11) NOT NULL,
  `cod_professor` int(11) NOT NULL,
  `ano` smallint(6) NOT NULL,
  `frequencia` float(5,2) NOT NULL,
  `nota` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`RA`, `cod_disciplina`, `cod_turma`, `cod_professor`, `ano`, `frequencia`, `nota`) VALUES
(2, 2, 1, 2, 2010, 5.00, 10),
(3, 3, 1, 3, 2010, 5.00, 10),
(4, 1, 2, 1, 2009, 5.00, 10),
(5, 2, 2, 2, 2009, 5.00, 10),
(6, 3, 2, 3, 2009, 5.00, 10),
(7, 1, 3, 1, 2020, 5.00, 10),
(8, 2, 3, 2, 2020, 5.00, 10),
(9, 3, 3, 3, 2020, 5.00, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `cod_professor` int(11) NOT NULL,
  `nome_professor` varchar(120) NOT NULL,
  `endereco` varchar(160) NOT NULL,
  `cidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`cod_professor`, `nome_professor`, `endereco`, `cidade`) VALUES
(1, 'Marcos', 'Rua das Orquideas', 'Curitiba'),
(2, 'José', 'Rus 13 de Abril', 'Umuarama'),
(3, 'Maria', 'Rua dos Passáros', 'Curitiba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` int(11) NOT NULL,
  `cod_disciplina` int(11) NOT NULL,
  `cod_professor` int(11) NOT NULL,
  `ano` smallint(6) NOT NULL,
  `horario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_turma`, `cod_disciplina`, `cod_professor`, `ano`, `horario`) VALUES
(1, 1, 1, 3, '10:00:00'),
(2, 2, 2, 2, '12:00:00'),
(3, 3, 3, 1, '14:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`RA`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`cod_disciplina`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cod_professor`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `RA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `cod_professor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `cod_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
