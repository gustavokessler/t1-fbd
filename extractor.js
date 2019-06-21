const fs = require("fs");

const sourceFileName = "2019_OrcamentoDespesa/2019_OrcamentoDespesa.zip.csv";
const targetFileName = "unf-inserts.sql";

const columnsTypes = "int int string int string int string int string int string int string string string int string int string int string double double double"
    .split(" ");

const rows = fs
    .readFileSync(sourceFileName, "utf8")
    .replace(/\r\n/g, "\n")
    .split("\n")
    .map(line => line
        .split(";")
        .map((field) => field
            .replace(/^\"(.*)\"$/g, "$1")
            .trim()
        )
        .map((field, i) => {
            switch (columnsTypes[i]) {
                case "int":
                case "double":
                    return +field.replace(/\./g, "").replace(/,/g, ".");
                case "string":
                    return `'${field.replace(/\'/g, "\\\'")}'`;
                default:
                    return "error";
            }
        })
    );

const columnNames = rows.splice(0, 1)[0];
const values = rows.map((row) => `    (${row.join(", ")})`);
// const distinct = values.filter((r, i) => values.indexOf(r) === i);

const niceColumnNames = "exercicio, codOrgaoSuperior, nomeOrgaoSuperior, codOrgaoSubordinado, nomeOrgaoSubordinado, codUnidadeOrcamentaria, nomeUnidadeOrcamentaria, codFuncao, nomeFuncao, codSubfuncao, nomeSubfuncao, codProgramaOrcamentario, nomeProgramaOrcamentario, codAcao, nomeAcao, codCategoriaEconomica, nomeCategoriaEconomica, codGrupoDespesa, nomeGrupoDespesa, codElementoDespesa, nomeElementoDespesa, orcamentoInicial, orcamentoAtualizado, orcamentoRealizado";
const header = `USE \`orcamentosUnf\`;\nDELETE FROM orcamento WHERE codOrcamento > 0;\nINSERT INTO orcamento (${niceColumnNames})\nVALUES\n`;

fs.writeFileSync(targetFileName, header + values.join(",\n") + "\n;");