CREATE DATABASE `gestion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
CREATE TABLE `auth` (
  `login` varchar(100) NOT NULL,
  `pass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `consultation` (
  `date` date DEFAULT NULL,
  `matricule` int(11) DEFAULT NULL,
  `num_ss` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `matricule` (`matricule`),
  KEY `num_ss` (`num_ss`),
  CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `consulte` (`matricule`),
  CONSTRAINT `consultation_ibfk_2` FOREIGN KEY (`num_ss`) REFERENCES `consulte` (`num_ss`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `consulte` (
  `matricule` int(11) DEFAULT NULL,
  `num_ss` int(11) DEFAULT NULL,
  KEY `matricule` (`matricule`),
  KEY `num_ss` (`num_ss`),
  CONSTRAINT `consulte_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `medecin` (`matricule`),
  CONSTRAINT `consulte_ibfk_2` FOREIGN KEY (`num_ss`) REFERENCES `patient` (`num_ss`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `medecin` (
  `matricule` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `medicament` (
  `code` varchar(6) NOT NULL,
  `libelle` varchar(45) DEFAULT NULL,
  `indication` varchar(45) DEFAULT NULL,
  `posologie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `patient` (
  `num_ss` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`num_ss`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `prescrit` (
  `code` varchar(6) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `jours` varchar(45) DEFAULT NULL,
  KEY `code` (`code`),
  KEY `num` (`num`),
  CONSTRAINT `prescrit_ibfk_2` FOREIGN KEY (`code`) REFERENCES `medicament` (`code`),
  CONSTRAINT `prescrit_ibfk_3` FOREIGN KEY (`num`) REFERENCES `consultation` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
