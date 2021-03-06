-- MySQL Script generated by MySQL Workbench
-- ter 29 jun 2021 16:35:28
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema nlw_valoriza
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `nlw_valoriza` ;

-- -----------------------------------------------------
-- Schema nlw_valoriza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nlw_valoriza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `nlw_valoriza` ;

-- -----------------------------------------------------
-- Table `nlw_valoriza`.`tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nlw_valoriza`.`tags` ;

CREATE TABLE IF NOT EXISTS `nlw_valoriza`.`tags` (
  `id` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `nlw_valoriza`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nlw_valoriza`.`users` ;

CREATE TABLE IF NOT EXISTS `nlw_valoriza`.`users` (
  `id` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `admin` TINYINT(1) NOT NULL DEFAULT '0',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `nlw_valoriza`.`compliments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nlw_valoriza`.`compliments` ;

CREATE TABLE IF NOT EXISTS `nlw_valoriza`.`compliments` (
  `id` VARCHAR(255) NOT NULL,
  `user_sender` VARCHAR(255) NULL DEFAULT NULL,
  `user_receiver` VARCHAR(255) NULL DEFAULT NULL,
  `tag_id` VARCHAR(255) NULL DEFAULT NULL,
  `message` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_TagCompliments`
    FOREIGN KEY (`tag_id`)
    REFERENCES `nlw_valoriza`.`tags` (`id`)
    ON DELETE SET NULL
    ON UPDATE SET NULL,
  CONSTRAINT `FK_UserReceiverCompliments`
    FOREIGN KEY (`user_receiver`)
    REFERENCES `nlw_valoriza`.`users` (`id`)
    ON DELETE SET NULL
    ON UPDATE SET NULL,
  CONSTRAINT `FK_UserSenderCompliments`
    FOREIGN KEY (`user_sender`)
    REFERENCES `nlw_valoriza`.`users` (`id`)
    ON DELETE SET NULL
    ON UPDATE SET NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `FK_UserSenderCompliments` ON `nlw_valoriza`.`compliments` (`user_sender` ASC) VISIBLE;

CREATE INDEX `FK_UserReceiverCompliments` ON `nlw_valoriza`.`compliments` (`user_receiver` ASC) VISIBLE;

CREATE INDEX `FK_TagCompliments` ON `nlw_valoriza`.`compliments` (`tag_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `nlw_valoriza`.`migrations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nlw_valoriza`.`migrations` ;

CREATE TABLE IF NOT EXISTS `nlw_valoriza`.`migrations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `timestamp` BIGINT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
