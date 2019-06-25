-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Jun-2019 às 02:25
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acervo`
--

CREATE TABLE `acervo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `arquivo` varchar(150) NOT NULL,
  `mine` varchar(50) NOT NULL,
  `ordem` int(11) NOT NULL DEFAULT '0',
  `ativo` bit(1) NOT NULL DEFAULT b'1',
  `conteudo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acervo`
--

INSERT INTO `acervo` (`id`, `titulo`, `texto`, `arquivo`, `mine`, `ordem`, `ativo`, `conteudo_id`) VALUES
(1, 'Atari Foto 1', 'Foto Atari A', 'atari.jpg', 'image/jpeg', 1, b'1', 2),
(2, 'Game Boy', 'Foto Game Boy', 'gameboy.jpg', 'image/jpeg', 1, b'1', 8),
(3, 'Mega Drive', 'Foto Mega Drive', 'megadrive.jpg', 'image/jpeg', 1, b'1', 9),
(4, 'Odyssey', 'Foto Odissey', 'odyssey.jpg', 'image/jpeg', 1, b'1', 1),
(5, 'Play Station 2', 'Foto Play Station 2', 'playstation2.jpg', 'image/jpeg', 1, b'1', 4),
(6, 'Play Station 3', 'Foto Play Station 2', 'playstation3.jpg', 'image/jpeg', 1, b'1', 7),
(7, 'Super NES', 'Foto Super NES', 'supernes.jpg', 'image/jpeg', 1, b'1', 3),
(8, 'Wii', 'Foto Wii', 'wii.jpg', 'image/jpeg', 1, b'1', 5),
(9, 'X Box 360', 'Foto X Box 360', 'xbox360.jpg', 'image/jpeg', 1, b'1', 6),
(10, 'Atari Foto 2', 'Foto Atari B', 'atari_2.jpg', 'image/jpeg', 2, b'1', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `conteudo_id` int(11) NOT NULL,
  `sessao_id` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `ip` int(14) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(11) NOT NULL,
  `data_publicacao` datetime NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `texto` text NOT NULL,
  `ativo` bit(1) NOT NULL DEFAULT b'1',
  `sessao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id`, `data_publicacao`, `titulo`, `texto`, `ativo`, `sessao_id`) VALUES
(1, '2019-06-06 00:00:00', 'Odissey', 'O primeiro console comercializado da história foi o Odissey, elaborado pela empresa Magnavox, em 1972, nos Estados Unidos.', b'1', 2),
(2, '2019-06-05 18:00:00', 'Atari', 'Um pouco depois do lançamento do Odissey, surge o fenômeno que todos normalmente associam com a história do videogame: o Atari 2600. Projetado por Nolan Bushnell e lançado em 1978 nos Estados Unidos.', b'1', 2),
(3, '2019-06-06 01:00:00', 'Super NES', 'Nintendo obviamente entrou na disputa e lançou um dos maiores sucessos de toda a história do videogame: o Super NES.', b'1', 2),
(4, '2019-06-06 01:00:00', 'PlayStation 2', 'Pois bem, o PS2 popularizou séries como Metal Gear, Silent Hill, Resident Evil e outras. Ele foi — e ainda é — um dos queridinhos dos brasileiros. Com 155 milhões de aparelhos comercializados, a medalha de ouro vai para o adorado PlayStation 2. Parabéns para a Sony por este brilhante console!', b'1', 2),
(5, '2019-06-06 01:00:00', 'Wii', 'A Microsoft e a Sony podem ter tentado, mas, considerando os consoles de sétima geração, quem conseguiu a vaga no top 5 foi a Nintendo, com um dos consoles mais inovadores de todos os tempos: o Wii.', b'1', 2),
(6, '2019-06-06 01:00:00', 'Xbox 360', 'Bom, o Xbox 360 é o único aparelho da Microsoft neste ranking, mas ele mandou muito bem em vendas e em diversão. Certamente, muita gente teve bons momentos com jogos como Gears of War, Halo e Motorsport. E quem não teve essa oportunidade provavelmente ficou na vontade.', b'1', 2),
(7, '2019-06-06 01:00:00', 'PlayStation 3', 'Atualmente, rola uma briguinha ferrenha entre sonystas e caixistas para saber qual video game era o melhor. Bom, infelizmente, nós temos que comunicar que, considerando a questão de aparelhos vendidos, o PS3 ficou um pouquinho para trás — mas foi muito pouquinho mesmo!', b'1', 2),
(8, '2019-06-06 01:00:00', 'Game Boy', 'A década de 1990 foi marcada com um console de bolso que levou o mundo a se apaixonar por jogos como Pokémon, Zelda, Tetris e vários games do Mario. O aparelho era febre nas escolas e levou toda uma geração a amar os monstrinhos de bolso (o que deve ter ajudado demais nas vendas dos demais portáteis da Nintendo).', b'1', 2),
(9, '2019-06-06 01:00:00', 'Mega Drive ', 'O Sega Genesis, que ficou conhecido no Brasil como Mega Drive, foi a porta de entrada para muitas crianças lá no começo da década de 1990. E se engana quem pensa que ele vendeu pouca coisa, já que os números mostram que ele quase alcançou o seu concorrente direto.', b'1', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessao`
--

CREATE TABLE `sessao` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `ativo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sessao`
--

INSERT INTO `sessao` (`id`, `nome`, `ativo`) VALUES
(1, 'Acervo', b'1'),
(2, 'Conteudo', b'1'),
(3, 'Usuario', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ativo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `usuario`, `senha`, `email`, `ativo`) VALUES
(1, 'Flávio Chagas', 'flavio', 'flavio1', 'flavio@flavio.com.br', b'1'),
(3, 'Flavio Chagas 2', 'flavio2', 'flavio2', 'flavio2@flavio.com.br', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acervo`
--
ALTER TABLE `acervo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_acervo_conteudo_idx` (`conteudo_id`);

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conteudo_sessao1_idx` (`sessao_id`);

--
-- Indexes for table `sessao`
--
ALTER TABLE `sessao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acervo`
--
ALTER TABLE `acervo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sessao`
--
ALTER TABLE `sessao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `acervo`
--
ALTER TABLE `acervo`
  ADD CONSTRAINT `fk_acervo_conteudo` FOREIGN KEY (`conteudo_id`) REFERENCES `conteudo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD CONSTRAINT `fk_conteudo_sessao1` FOREIGN KEY (`sessao_id`) REFERENCES `sessao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
