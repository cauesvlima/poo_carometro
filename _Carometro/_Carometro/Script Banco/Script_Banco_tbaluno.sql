-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/03/2023 às 12:24
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
-- Banco de dados: `bd_clodoveu`
--
DROP DATABASE IF EXISTS `bd_clodoveu`;
CREATE DATABASE IF NOT EXISTS `bd_clodoveu` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_clodoveu`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_aluno`
--

DROP TABLE IF EXISTS `tb_aluno`;
CREATE TABLE `tb_aluno` (
  `Rm` mediumint(9) NOT NULL PRIMARY KEY,
  `Cpf` varchar(14) NOT NULL,
  `Rg` varchar(12) NOT NULL,
  `Sobrenome` varchar(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Nacionalidade` varchar(15) DEFAULT NULL,
  `DtNasc` date NULL,
  `Sexo` char(1) NULL,
  `Foto` varchar(30) DEFAULT NULL,
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
  `Email` varchar(60) DEFAULT NULL,
  `StatusAlu` tinyint DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_aluno`
--

INSERT INTO `tb_aluno` (`Rm`, `Cpf`, `Rg`, `Sobrenome`, `Nome`, `Nacionalidade`, `DtNasc`, `Sexo`, `Foto`, `Responsavel`, `CelularResp`, `Logradouro`, `NomeLog`, `Numero`, `Bairro`, `Cidade`, `Cep`, `Uf`, `Pais`, `Complemento`, `FoneFixo`, `Celular`, `Email`) VALUES
(210465, '123.456.789-79', '10.210.699-X', 'FERRAÇO', 'RICARDO SANTANA', NULL, '2005-01-01', 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ricardo@ricardo.com.br'),
(210468, '123.456.789-79', '10.210.699-X', 'CAMARGO', 'PEDRO HENRIQUE FABRE DE', NULL, '2005-12-23', 'M', '', 'Pedro pai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pedroso@pedro.com.br'),
(210469, '123.456.789-79', '10.210.699-X', 'ROSA', 'MIGUEL SACARDO LALLA', NULL, '2005-12-08', 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'miguelzinho@miguel.com.br'),
(210472, '123.456.789-79', '10.210.699-X', 'JACOB', 'LORENNA NICOLE ALVES', NULL, '2005-02-17', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210473, '123.456.789-79', '10.210.699-X', 'LIMA', 'CAUÊ SILVEIRA VAZ DE', NULL, '2005-11-07', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210475, '123.456.789-79', '10.210.699-X', 'DOCEMA', 'FERDINANDO MARTINS', NULL, '2004-02-02', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210480, '123.456.789-79', '10.210.699-X', 'SOUZA', 'BRAYAN JUNIOR DE', NULL, '2005-12-08', 'M', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'brayanjunior925@gmail.com'),
(210502, '123.456.789-79', '10.210.699-X', 'ARDITO', 'BIANCA GONÇALVES', NULL, '2006-06-14', 'F', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bianquinha@etec.sp.gov.br'),
(210547, '123.456.789-79', '10.210.699-X', 'MORANDIN', 'RENÃ BORTOLOTTI', 'BRASILEIRO', '0000-00-00', 'm', 'elefante.jpg', 'RENã PAI', '19955446633', 'rua', 'sete de setembro', 299, 'Centro', 'Monte Alegre do Sul', '13.820-000', 'sp', 'Brasil', 'casa', '1912349876', '1999117485', 'rena@etec.sp.gov.br'),
(210630, '123.456.789-79', '10.210.699-X', 'CABRAL', 'CAIO HENRIQUE DA SILVA', '', '0000-00-00', 'm', '', 'Shirley Mendonça da silva', '19955446644', 'rua', '', 0, 'Beira Rio', '', '', '', '', '', '', '', 'caio@caio.com.br'),
(767676, '123.456.789-09', '11.111.111', 'rodrigues', 'claudia de jesus', '', '0000-00-00', 'f', NULL, '', '', '', '', 0, '', '', '', '', '', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
