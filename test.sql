DROP DATABASE IF EXISTS `orcamentos`;
CREATE DATABASE IF NOT EXISTS `orcamentos`;
USE `orcamentos`;

-- DROP TABLE IF EXISTS `orcamento`;
-- CREATE TABLE `orcamento` (
--     exercicio
--     orgao superior
--     orgao subordinado
--     unidade orcamentaria
--     funcao
--     subfuncao
--     programa orcamentario
--     acao
--     categoria economica
--     grupo despesa
--     elemento despesa
--     inicial
--     atualizado
--     realizado
-- );

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
    `codAcao` INT NOT NULL,
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