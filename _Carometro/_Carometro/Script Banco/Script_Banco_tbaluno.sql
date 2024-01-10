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



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
