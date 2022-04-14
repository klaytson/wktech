-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema wktech
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema wktech
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wktech` DEFAULT CHARACTER SET latin1 ;
USE `wktech` ;

-- -----------------------------------------------------
-- Table `wktech`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wktech`.`clientes` (
  `Codigo` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(145) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`Codigo`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `wktech`.`pedidos_dados_gerais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wktech`.`pedidos_dados_gerais` (
  `NumeroPedido` INT(11) NOT NULL AUTO_INCREMENT,
  `DataEmissao` DATETIME NOT NULL,
  `CodigoCliente` INT(11) NOT NULL,
  `ValorTotal` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`NumeroPedido`),
  INDEX `fk_pedidos_dados_gerais_clientes1_idx` (`CodigoCliente` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `wktech`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wktech`.`produtos` (
  `Codigo` INT(11) NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(255) NOT NULL,
  `PrecoVenda` DOUBLE NOT NULL,
  PRIMARY KEY (`Codigo`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `wktech`.`pedidos_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wktech`.`pedidos_produtos` (
  `CodigoPedidosProdutos` INT(11) NOT NULL AUTO_INCREMENT,
  `NumeroPedido` INT(11) NOT NULL,
  `CodigoProduto` INT(11) NOT NULL,
  `Quantidade` INT(11) NOT NULL,
  `ValorUnitario` DOUBLE NULL DEFAULT NULL,
  `ValorTotal` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`CodigoPedidosProdutos`),
  INDEX `fk_pedidos_produtos_pedidos_dados_gerais_idx` (`NumeroPedido` ASC),
  INDEX `fk_pedidos_produtos_produtos1_idx` (`CodigoProduto` ASC) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
