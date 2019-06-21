USE `orcamentos2nf`;

REPLACE INTO orgao (codOrgao, nomeOrgao)
SELECT codOrgaoSuperior, nomeOrgaoSuperior FROM orcamentosUnf.orcamento;

REPLACE INTO orgao (codOrgao, nomeOrgao)
SELECT codOrgaoSubordinado, nomeOrgaoSubordinado FROM orcamentosUnf.orcamento;

REPLACE INTO unidadeOrcamentaria (codUnidadeOrcamentaria, nomeUnidadeOrcamentaria)
SELECT codUnidadeOrcamentaria, nomeUnidadeOrcamentaria FROM orcamentosUnf.orcamento;

REPLACE INTO funcao (codFuncao, nomeFuncao)
SELECT codFuncao, nomeFuncao FROM orcamentosUnf.orcamento;

REPLACE INTO subfuncao (codSubfuncao, nomeSubfuncao)
SELECT codSubfuncao, nomeSubfuncao FROM orcamentosUnf.orcamento;

REPLACE INTO programaOrcamentario (codProgramaOrcamentario, nomeProgramaOrcamentario)
SELECT codProgramaOrcamentario, nomeProgramaOrcamentario FROM orcamentosUnf.orcamento;

REPLACE INTO acao (codAcao, nomeAcao)
SELECT codAcao, nomeAcao FROM orcamentosUnf.orcamento;

REPLACE INTO categoriaEconomica (codCategoriaEconomica, nomeCategoriaEconomica)
SELECT codCategoriaEconomica, nomeCategoriaEconomica FROM orcamentosUnf.orcamento;

REPLACE INTO grupoDespesa (codGrupoDespesa, nomeGrupoDespesa)
SELECT codGrupoDespesa, nomeGrupoDespesa FROM orcamentosUnf.orcamento;

REPLACE INTO elementoDespesa (codElementoDespesa, nomeElementoDespesa)
SELECT codElementoDespesa, nomeElementoDespesa FROM orcamentosUnf.orcamento;

REPLACE INTO orcamento (codOrcamento, exercicio, codOrgaoSuperior, codOrgaoSubordinado, codUnidadeOrcamentaria, codFuncao, codSubfuncao, codProgramaOrcamentario, codAcao, codCategoriaEconomica, codGrupoDespesa, codElementoDespesa, orcamentoInicial, orcamentoAtualizado, orcamentoRealizado)
SELECT codOrcamento, exercicio, codOrgaoSuperior, codOrgaoSubordinado, codUnidadeOrcamentaria, codFuncao, codSubfuncao, codProgramaOrcamentario, codAcao, codCategoriaEconomica, codGrupoDespesa, codElementoDespesa, orcamentoInicial, orcamentoAtualizado, orcamentoRealizado FROM orcamentosUnf.orcamento;
