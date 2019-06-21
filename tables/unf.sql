DROP DATABASE IF EXISTS `orcamentosUnf`;
CREATE DATABASE IF NOT EXISTS `orcamentosUnf`;
USE `orcamentosUnf`;

DROP TABLE IF EXISTS `orcamento`;
CREATE TABLE `orcamento` (
    `codOrcamento` INT NOT NULL AUTO_INCREMENT,
    `exercicio` INT NOT NULL,
    `codOrgaoSuperior` INT NOT NULL,
    `nomeOrgaoSuperior` VARCHAR(255) NOT NULL,
    `codOrgaoSubordinado` INT NOT NULL,
    `nomeOrgaoSubordinado` VARCHAR(255) NOT NULL,
    `codUnidadeOrcamentaria` INT NOT NULL,
    `nomeUnidadeOrcamentaria` VARCHAR(255) NOT NULL,
    `codFuncao` INT NOT NULL,
    `nomeFuncao` VARCHAR(255) NOT NULL,
    `codSubfuncao` INT NOT NULL,
    `nomeSubfuncao` VARCHAR(255) NOT NULL,
    `codProgramaOrcamentario` INT NOT NULL,
    `nomeProgramaOrcamentario` VARCHAR(255) NOT NULL,
    `codAcao` VARCHAR(255) NOT NULL,
    `nomeAcao` VARCHAR(255) NOT NULL,
    `codCategoriaEconomica` INT NOT NULL,
    `nomeCategoriaEconomica` VARCHAR(255) NOT NULL,
    `codGrupoDespesa` INT NOT NULL,
    `nomeGrupoDespesa` VARCHAR(255) NOT NULL,
    `codElementoDespesa` INT NOT NULL,
    `nomeElementoDespesa` VARCHAR(255) NOT NULL,
    `orcamentoInicial` DOUBLE NOT NULL,
    `orcamentoAtualizado` DOUBLE NOT NULL,
    `orcamentoRealizado` DOUBLE NOT NULL,
    PRIMARY KEY (`codOrcamento`)
);