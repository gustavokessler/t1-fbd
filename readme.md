# T1 - Fundamentos de Bando de Dados

## Source

Ano 2019: <http://www.portaltransparencia.gov.br/download-de-dados/orcamento-despesa>

### Notes

- Existem valores duplicados, então é necessário adicionar uma nova coluna para a chave primária (`codigo_orcamento`)
- Todos os orgãos subordinados posssuem os mesmos orgãos superiores
- Um mesmo elemento de despesa pode estar associado a mais de um grupo de despesa, não há relações entre eles
- Todas as unidades orçamentárias estão relacionadas ao mesmo orgão superior
