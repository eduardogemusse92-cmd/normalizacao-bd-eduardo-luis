-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Set-2026 às 11:48
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empresa_funcionarios`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `cod_cargo` varchar(10) NOT NULL,
  `nome_cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`cod_cargo`, `nome_cargo`) VALUES
('C01', 'Técnico de Informática'),
('C02', 'Contabilista'),
('C03', 'Engenheiro Civil'),
('C04', 'Enfermeiro'),
('C05', 'Professor'),
('C06', 'Motorista'),
('C07', 'Gestor de Recursos Humanos'),
('C08', 'Assistente Administrativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `id_provincia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `nome`, `id_provincia`) VALUES
(1, 'Maputo', 1),
(2, 'Maputo', 1),
(3, 'Maputo', 1),
(4, 'Matola', 2),
(5, 'Chókwè', 3),
(6, 'Maxixe', 4),
(7, 'Beira', 5),
(8, 'Chimoio', 6),
(9, 'Tete', 7),
(10, 'Quelimane', 8),
(11, 'Nampula', 9),
(12, 'Pemba', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `filho`
--

CREATE TABLE `filho` (
  `id_filho` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `filho`
--

INSERT INTO `filho` (`id_filho`, `nome`, `id_funcionario`) VALUES
(1, 'Cátia Cossa', 1),
(3, 'Nelson Machava', 2),
(4, 'Ivete Machava', 2),
(5, 'Suzana Machava', 2),
(6, 'Paulo Nhantumbo Jr', 4),
(7, 'Alzira Nhantumbo', 4),
(8, 'Marta Muchanga', 5),
(9, 'José Macuácua', 6),
(10, 'Beatriz Macuácua', 6),
(11, 'Adriano Macuácua', 6),
(12, 'António Cuamba Jr', 8),
(13, 'Filomena Cuamba', 8),
(14, 'Baptista Nhaca Jr', 10),
(15, 'Ermelinda Bila', 11),
(16, 'Inácio Tembe Jr', 12),
(18, 'Simião Ubisse Jr', 14),
(20, 'Custódio Ubisse', 14),
(21, 'Manuel Come Jr', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

CREATE TABLE `funcao` (
  `cod_funcao` varchar(10) NOT NULL,
  `nome_funcao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`cod_funcao`, `nome_funcao`) VALUES
('F01', 'Tecnologias de Informação'),
('F02', 'Finanças'),
('F03', 'Engenharia'),
('F04', 'Saúde'),
('F05', 'Educação'),
('F06', 'Logística'),
('F07', 'Recursos Humanos'),
('F08', 'Administração');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `nuit` varchar(20) DEFAULT NULL,
  `bi` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `cod_cargo` varchar(10) DEFAULT NULL,
  `cod_funcao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `data_nasc`, `nuit`, `bi`, `email`, `data_admissao`, `id_cidade`, `cod_cargo`, `cod_funcao`) VALUES
(1, 'Amélia Fernanda Cossa', '1985-03-12', '100234567', '110100123456A', 'amelia.cossa@empresa.co.mz', '2015-02-05', 1, 'C01', 'F01'),
(2, 'Amélia Fernanda Cossa', '1985-03-12', '100234567', '110100123456A', 'amelia.cossa@empresa.co.mz', '2015-02-05', 1, 'C01', 'F01'),
(3, 'Bernardo Alfredo Machava', '1979-07-22', '100345678', '110100234567B', 'bernardo.machava@empresa.co.mz', '2010-09-14', 1, 'C02', 'F02'),
(4, 'Celina Armando Sitoe', '1990-11-03', '100456789', '110200345678C', 'celina.sitoe@empresa.co.mz', '2018-06-01', 2, 'C08', 'F08'),
(5, 'Domingos Paulo Nhantumbo', '1982-01-30', '100567890', '110300456789D', 'domingos.nhantumbo@empresa.co.mz', '2012-03-10', 3, 'C06', 'F06'),
(6, 'Eugénia Marta Muchanga', '1988-05-18', '100678901', '110400567890E', 'eugenia.muchanga@empresa.co.mz', '2016-08-20', 4, 'C04', 'F04'),
(7, 'Fernando José Macuácua', '1975-09-25', '100789012', '110500678901F', 'fernando.macuacua@empresa.co.mz', '2008-01-15', 5, 'C03', 'F03'),
(8, 'Graça Isabel Zunguze', '1992-12-07', '100890123', '110600789012G', 'graca.zunguze@empresa.co.mz', '2019-02-02', 5, 'C05', 'F05'),
(9, 'Hélder António Cuamba', '1980-04-14', '100901234', '110700890123H', 'helder.cuamba@empresa.co.mz', '2011-11-11', 1, 'C07', 'F07'),
(10, 'Ivete Sara Chirindza', '1995-06-29', '101012345', '110800901234I', 'ivete.chirindza@empresa.co.mz', '2020-07-03', 9, 'C01', 'F01'),
(11, 'João Baptista Nhaca', '1978-08-09', '101123456', '110900012345J', 'joao.nhaca@empresa.co.mz', '2009-05-25', 9, 'C02', 'F02'),
(12, 'Lúcia Ermelinda Bila', '1991-02-16', '101234567', '111000123456K', 'lucia.bila@empresa.co.mz', '2017-09-19', 5, 'C08', 'F08'),
(13, 'Marcelino Inácio Tembe', '1983-10-21', '101345678', '111100234567L', 'marcelino.tembe@empresa.co.mz', '2013-04-08', 1, 'C03', 'F03'),
(14, 'Noémia Alzira Massingue', '1987-03-04', '101456789', '111200345678M', 'noemia.massingue@empresa.co.mz', '2014-12-12', 6, 'C04', 'F04'),
(15, 'Osvaldo Simião Ubisse', '1976-07-27', '101567890', '111300456789N', 'osvaldo.ubisse@empresa.co.mz', '2006-10-30', 7, 'C06', 'F06'),
(16, 'Paulina Fátima Uache', '1993-01-15', '101678901', '111400567890O', 'paulina.uache@empresa.co.mz', '2021-09-09', 8, 'C05', 'F05'),
(17, 'Ricardo Manuel Come', '1981-06-02', '101789012', '111500678901P', 'ricardo.come@empresa.co.mz', '2010-07-17', 10, 'C07', 'F07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id_pais`, `nome`) VALUES
(1, 'Moçambique');

-- --------------------------------------------------------

--
-- Estrutura da tabela `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `id_pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nome`, `id_pais`) VALUES
(1, 'Maputo Cidade', 1),
(2, 'Maputo Cidade', 1),
(3, 'Maputo Cidade', 1),
(4, 'Maputo Província', 1),
(5, 'Gaza', 1),
(6, 'Inhambane', 1),
(7, 'Sofala', 1),
(8, 'Manica', 1),
(9, 'Tete', 1),
(10, 'Zambézia', 1),
(11, 'Nampula', 1),
(12, 'Cabo Delgado', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id_telefone`, `numero`, `id_funcionario`) VALUES
(1, '841234567', 1),
(2, '841234567', 1),
(3, '821234567', 1),
(4, '845678901', 2),
(5, '861122334', 3),
(6, '847890123', 4),
(7, '878901234', 4),
(8, '849012345', 5),
(9, '823456789', 6),
(10, '843456789', 6),
(11, '863456789', 6),
(12, '844567890', 7),
(13, '824567890', 7),
(14, '825678901', 8),
(15, '846789012', 9),
(16, '827890123', 10),
(17, '847890124', 10),
(18, '848901234', 11),
(19, '829012345', 12),
(20, '849012346', 12),
(21, '869012347', 12),
(22, '841122334', 13),
(23, '822233445', 14),
(24, '842233445', 14),
(25, '843344556', 15),
(26, '824455667', 16),
(27, '844455667', 16);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_funcionarios_completos`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_funcionarios_completos` (
`id_funcionario` int(11)
,`funcionario` varchar(100)
,`nome_cargo` varchar(100)
,`nome_funcao` varchar(100)
,`cidade` varchar(100)
,`provincia` varchar(100)
,`pais` varchar(100)
,`filho` varchar(100)
,`telefone` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_funcionarios_completos`
--
DROP TABLE IF EXISTS `vw_funcionarios_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_funcionarios_completos`  AS SELECT `f`.`id_funcionario` AS `id_funcionario`, `f`.`nome` AS `funcionario`, `c`.`nome_cargo` AS `nome_cargo`, `fn`.`nome_funcao` AS `nome_funcao`, `ci`.`nome` AS `cidade`, `p`.`nome` AS `provincia`, `pa`.`nome` AS `pais`, `fi`.`nome` AS `filho`, `t`.`numero` AS `telefone` FROM (((((((`funcionario` `f` join `cargo` `c` on(`f`.`cod_cargo` = `c`.`cod_cargo`)) join `funcao` `fn` on(`f`.`cod_funcao` = `fn`.`cod_funcao`)) join `cidade` `ci` on(`f`.`id_cidade` = `ci`.`id_cidade`)) join `provincia` `p` on(`ci`.`id_provincia` = `p`.`id_provincia`)) join `pais` `pa` on(`p`.`id_pais` = `pa`.`id_pais`)) left join `filho` `fi` on(`f`.`id_funcionario` = `fi`.`id_funcionario`)) left join `telefone` `t` on(`f`.`id_funcionario` = `t`.`id_funcionario`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`cod_cargo`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Índices para tabela `filho`
--
ALTER TABLE `filho`
  ADD PRIMARY KEY (`id_filho`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices para tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`cod_funcao`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `id_cidade` (`id_cidade`),
  ADD KEY `cod_cargo` (`cod_cargo`),
  ADD KEY `cod_funcao` (`cod_funcao`);

--
-- Índices para tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Índices para tabela `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id_telefone`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `filho`
--
ALTER TABLE `filho`
  MODIFY `id_filho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`);

--
-- Limitadores para a tabela `filho`
--
ALTER TABLE `filho`
  ADD CONSTRAINT `filho_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`cod_cargo`) REFERENCES `cargo` (`cod_cargo`),
  ADD CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`cod_funcao`) REFERENCES `funcao` (`cod_funcao`);

--
-- Limitadores para a tabela `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
