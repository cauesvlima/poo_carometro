-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2022 às 18:44
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_clodoveu`
--
DROP DATABASE IF EXISTS `bd_clodoveu`;
CREATE DATABASE IF NOT EXISTS `bd_clodoveu` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_clodoveu`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_aluno`
--

CREATE TABLE `tb_aluno` (
  `Rm` mediumint(9) NOT NULL,
  `Cpf` varchar(14) NOT NULL,
  `Rg` varchar(12) NOT NULL,
  `Sobrenome` varchar(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Nacionalidade` varchar(15) DEFAULT NULL,
  `DtNasc` date NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Foto` varchar(10) DEFAULT NULL,
  `Responsavel` varchar(70) DEFAULT NULL,
  `CelularResp` varchar(14) DEFAULT NULL,
  `Logradouro` varchar(10) DEFAULT NULL,
  `NomeLog` varchar(50) DEFAULT NULL,
  `Numero` smallint(6) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `Cidade` varchar(30) DEFAULT NULL,
  `Cep` char(10) DEFAULT NULL,
  `Uf` char(2) DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  `Complemento` varchar(150) DEFAULT NULL,
  `FoneFixo` varchar(13) DEFAULT NULL,
  `Celular` varchar(14) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_aluno`
--

INSERT INTO `tb_aluno` (`Rm`, `Cpf`, `Rg`, `Sobrenome`, `Nome`, `Nacionalidade`, `DtNasc`, `Sexo`, `Foto`, `Responsavel`, `CelularResp`, `Logradouro`, `NomeLog`, `Numero`, `Bairro`, `Cidade`, `Cep`, `Uf`, `Pais`, `Complemento`, `FoneFixo`, `Celular`, `Email`) VALUES
(210465, '111.456.789-79', '10.210.699-X', 'FERRAÇO', 'RICARDO SANTANA', '', '2005-01-10', 'M', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abernqenqermrymrwym'),
(210468, '123.456.789-79', '10.210.699-X', 'CAMARGO', 'PEDRO HENRIQUE FABRE DE', 'brasileiro', '2005-12-23', 'M', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210469, '123.456.789-79', '10.210.699-X', 'ROSA', 'MIGUEL SACARDO LALLA', NULL, '2005-12-08', 'M', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210472, '123.456.789-79', '10.210.699-X', 'JACOB', 'LORENNA NICOLE ALVES', NULL, '2005-02-17', 'F', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210473, '123.456.789-79', '10.210.699-X', 'LIMA', 'CAUÊ SILVEIRA VAZ DE', 'caueriaro', '2005-11-07', 'M', NULL, '', '', '', '', 0, '', '', '', '', '', '', '', '', ''),
(210475, '123.456.789-79', '10.210.699-X', 'DOCEMA', 'FERDINANDO MARTINS', NULL, '2004-02-02', 'M', NULL, 'RENAAAAAAAAAAA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210480, '123.456.789-79', '10.210.699-X', 'SOUZA', 'BRAYAN JUNIOR DE', NULL, '2005-12-08', 'M', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210502, '123.456.789-79', '10.210.699-X', 'ARDITO', 'BIANCA GONÇALVES', 'Brasileira', '2006-06-14', 'F', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210547, '123.456.789-79', '10.210.699-X', 'MORANDIN', 'RENÃ BORTOLOTTI', 'japanese', '2005-09-29', 'M', NULL, 'Rena pai ', '19998005316', 'casa', 'casa', 0, 'Ribeiraodos limas', 'Monte Alegre do Sul', '13820-000', 'SP', 'Brasil', 'Casa laranja', '38004103', '19998005316', 'rena@gmail.com'),
(210630, '123.456.789-79', '10.210.699-X', 'CABRAL', 'CAIO HENRIQUE DA SILVA', NULL, '2006-03-18', 'M', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'agerhqethjerhqerh@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_curso`
--

CREATE TABLE `tb_curso` (
  `CodCurso` mediumint(9) NOT NULL,
  `NomeCurso` varchar(15) NOT NULL,
  `Periodo` char(5) NOT NULL,
  `TipoCurso` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_curso`
--

INSERT INTO `tb_curso` (`CodCurso`, `NomeCurso`, `Periodo`, `TipoCurso`) VALUES
(1, '1 Novotec', 'Tarde', 'Ensino medio tecnico Informatica para a internet'),
(2, '2 Novotec', 'Tarde', 'Ensino medio tecnico Informatica para a internet');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_itensturma`
--

CREATE TABLE `tb_itensturma` (
  `CodTurma` mediumint(9) NOT NULL,
  `Item` mediumint(9) NOT NULL,
  `DtMatric` date NOT NULL,
  `Rm` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_turma`
--

CREATE TABLE `tb_turma` (
  `CodTurma` mediumint(9) NOT NULL,
  `CodCurso` mediumint(9) NOT NULL,
  `NmCoordenador` varchar(60) DEFAULT NULL,
  `DtInicio` varchar(19) DEFAULT NULL,
  `DtFormt` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `IdUsu` mediumint(9) NOT NULL,
  `NomeUsu` varchar(15) NOT NULL,
  `SenhaUsu` varchar(8) NOT NULL,
  `NivelUsu` char(1) NOT NULL,
  `StatusUsu` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`IdUsu`, `NomeUsu`, `SenhaUsu`, `NivelUsu`, `StatusUsu`) VALUES
(21, 'DSFGDSFG', 'sdfgsdfg', '2', 'a'),
(22, 'GGGGGGGGGGGG', 'gggggggg', '1', 'a'),
(24, 'RENAGAMEPLAYS02', 'renaisan', '1', 'i');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_aluno`
--
ALTER TABLE `tb_aluno`
  ADD PRIMARY KEY (`Rm`);

--
-- Índices para tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  ADD PRIMARY KEY (`CodCurso`);

--
-- Índices para tabela `tb_itensturma`
--
ALTER TABLE `tb_itensturma`
  ADD PRIMARY KEY (`CodTurma`,`Item`),
  ADD KEY `Rm` (`Rm`);

--
-- Índices para tabela `tb_turma`
--
ALTER TABLE `tb_turma`
  ADD PRIMARY KEY (`CodTurma`),
  ADD KEY `CodCurso` (`CodCurso`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`IdUsu`),
  ADD UNIQUE KEY `NomeUsu` (`NomeUsu`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  MODIFY `CodCurso` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1623271;

--
-- AUTO_INCREMENT de tabela `tb_turma`
--
ALTER TABLE `tb_turma`
  MODIFY `CodTurma` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `IdUsu` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_itensturma`
--
ALTER TABLE `tb_itensturma`
  ADD CONSTRAINT `tb_itensturma_ibfk_1` FOREIGN KEY (`CodTurma`) REFERENCES `tb_turma` (`CodTurma`),
  ADD CONSTRAINT `tb_itensturma_ibfk_2` FOREIGN KEY (`Rm`) REFERENCES `tb_aluno` (`Rm`);

--
-- Limitadores para a tabela `tb_turma`
--
ALTER TABLE `tb_turma`
  ADD CONSTRAINT `tb_turma_ibfk_1` FOREIGN KEY (`CodCurso`) REFERENCES `tb_curso` (`CodCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
