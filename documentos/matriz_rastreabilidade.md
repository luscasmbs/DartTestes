# Matriz de Rastreabilidade

| Requisito | Descrição | Casos relacionados | Situação | Defeitos |
|---|---|---|---|---|
| RN01 | Nome e curso obrigatórios | CT001, CT002, CT003 | Bloqueado por ambiente | — |
| RN02 | Idade mínima de 14 anos | CT004, CT005 | Bloqueado por ambiente | — |
| RN03 | Valor maior que zero | CT006, CT007 | Bloqueado por ambiente | — |
| RN04 | Formas de pagamento válidas | CT008, CT009, CT011, CT019, CT024 | Bloqueado por ambiente | — |
| RN05 | Parcelamento entre 1 e 6 | CT013, CT014, CT015, CT016, CT020 | Bloqueado por ambiente | — |
| RN06 | Pix e boleto sem parcelamento | CT017, CT018, CT019 | Bloqueado por ambiente | — |
| RN07 | Descontos de Pix e bolsista | CT009, CT010, CT011, CT012, CT025 | Bloqueado por ambiente | — |
| RN08 | Acréscimo de 4% acima de 3 parcelas | CT013, CT014, CT015, CT022, CT025 | Bloqueado por ambiente | — |
| RN09 | Arredondamento | CT013, CT014, CT015, CT021, CT022 | Bloqueado por ambiente | — |
| RN10 | Resumo da matrícula | CT023 | Bloqueado por ambiente | — |

## Análise

- Existe requisito sem caso de teste? Não.
- Existe caso sem requisito relacionado? Não.
- Quais requisitos foram aprovados? Nenhum ainda, pois a execução está bloqueada.
- Quais requisitos foram reprovados? Nenhum.
- Quais requisitos estão bloqueados? RN01 a RN10, por ausência do SDK Dart no ambiente de execução.
- Quais defeitos permanecem em aberto? Nenhum defeito confirmado.
