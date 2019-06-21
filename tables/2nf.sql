DROP DATABASE IF EXISTS `orcamentos2nf`;
CREATE DATABASE IF NOT EXISTS `orcamentos2nf`;
USE `orcamentos2nf`;

DROP TABLE IF EXISTS `orgao`;
CREATE TABLE `orgao` (
    `codOrgao` INT NOT NULL,
    `nomeOrgao` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codOrgao`)
);

DROP TABLE IF EXISTS `unidadeOrcamentaria`;
CREATE TABLE `unidadeOrcamentaria` (
    `codUnidadeOrcamentaria` INT NOT NULL,
    `nomeUnidadeOrcamentaria` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codUnidadeOrcamentaria`)
);

DROP TABLE IF EXISTS `funcao`;
CREATE TABLE `funcao` (
    `codFuncao` INT NOT NULL,
    `nomeFuncao` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codFuncao`)
);

DROP TABLE IF EXISTS `subfuncao`;
CREATE TABLE `subfuncao` (
    `codSubfuncao` INT NOT NULL,
    `nomeSubfuncao` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codSubfuncao`)
);

DROP TABLE IF EXISTS `programaOrcamentario`;
CREATE TABLE `programaOrcamentario` (
    `codProgramaOrcamentario` INT NOT NULL,
    `nomeProgramaOrcamentario` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codProgramaOrcamentario`)
);

DROP TABLE IF EXISTS `acao`;
CREATE TABLE `acao` (
    `codAcao` VARCHAR(255) NOT NULL,
    `nomeAcao` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codAcao`)
);

DROP TABLE IF EXISTS `categoriaEconomica`;
CREATE TABLE `categoriaEconomica` (
    `codCategoriaEconomica` INT NOT NULL,
    `nomeCategoriaEconomica` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codCategoriaEconomica`)
);

DROP TABLE IF EXISTS `grupoDespesa`;
CREATE TABLE `grupoDespesa` (
    `codGrupoDespesa` INT NOT NULL,
    `nomeGrupoDespesa` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codGrupoDespesa`)
);

DROP TABLE IF EXISTS `elementoDespesa`;
CREATE TABLE `elementoDespesa` (
    `codElementoDespesa` INT NOT NULL,
    `nomeElementoDespesa` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`codElementoDespesa`)
);

DROP TABLE IF EXISTS `orcamento`;
CREATE TABLE `orcamento` (
    `codOrcamento` INT NOT NULL,
    `exercicio` INT NOT NULL,
    `codOrgaoSuperior` INT NOT NULL,
    `codOrgaoSubordinado` INT NOT NULL,
    `codUnidadeOrcamentaria` INT NOT NULL,
    `codFuncao` INT NOT NULL,
    `codSubfuncao` INT NOT NULL,
    `codProgramaOrcamentario` INT NOT NULL,
    `codAcao` VARCHAR(255) NOT NULL,
    `codCategoriaEconomica` INT NOT NULL,
    `codGrupoDespesa` INT NOT NULL,
    `codElementoDespesa` INT NOT NULL,
    `orcamentoInicial` DOUBLE NOT NULL,
    `orcamentoAtualizado` DOUBLE NOT NULL,
    `orcamentoRealizado` DOUBLE NOT NULL,
    
    PRIMARY KEY (`codOrcamento`),

    FOREIGN KEY (`codOrgaoSuperior`) REFERENCES `orgao`(`codOrgao`), 
    FOREIGN KEY (`codOrgaoSubordinado`) REFERENCES `orgao`(`codOrgao`), 
    FOREIGN KEY (`codUnidadeOrcamentaria`) REFERENCES `unidadeOrcamentaria`(`codUnidadeOrcamentaria`), 
    FOREIGN KEY (`codFuncao`) REFERENCES `funcao`(`codFuncao`), 
    FOREIGN KEY (`codSubfuncao`) REFERENCES `subfuncao`(`codSubfuncao`), 
    FOREIGN KEY (`codProgramaOrcamentario`) REFERENCES `programaOrcamentario`(`codProgramaOrcamentario`), 
    FOREIGN KEY (`codAcao`) REFERENCES `acao`(`codAcao`), 
    FOREIGN KEY (`codCategoriaEconomica`) REFERENCES `categoriaEconomica`(`codCategoriaEconomica`), 
    FOREIGN KEY (`codGrupoDespesa`) REFERENCES `grupoDespesa`(`codGrupoDespesa`), 
    FOREIGN KEY (`codElementoDespesa`) REFERENCES `elementoDespesa`(`codElementoDespesa`)
);
