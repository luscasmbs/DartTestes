# Registro de Execução

**Versão:** 1.0.0 — **Data:** 14/08/2026 — **Ambiente:** Ubuntu Linux; SDK Dart não disponível no `PATH`.

O comando `dart test --reporter expanded` não pôde ser iniciado porque o executável `dart` não estava instalado no ambiente original. Os 25 casos estão preparados no arquivo `test/matricula_test.dart`; devem ser atualizados de **Bloqueado** para o resultado real após executar a suíte com um SDK Dart ^3.12.0.

| Execução | Caso | Resultado esperado | Resultado obtido | Status | Evidência | Defeito |
|---|---|---|---|---|---|---|
| EX001 | CT001 | Rejeitar nome vazio | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX002 | CT002 | Rejeitar nome com espaços | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX003 | CT003 | Rejeitar curso vazio | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX004 | CT004 | Rejeitar idade 13 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX005 | CT005 | Aceitar idade 14 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX006 | CT006 | Rejeitar valor zero | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX007 | CT007 | Rejeitar valor negativo | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX008 | CT008 | Rejeitar forma inexistente | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX009 | CT009 | Pix: R$ 540,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX010 | CT010 | Bolsista: R$ 570,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX011 | CT011 | Pix + bolsista: R$ 510,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX012 | CT012 | Sem desconto: R$ 600,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX013 | CT013 | Cartão 3x: R$ 600,00 / R$ 200,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX014 | CT014 | Cartão 4x: R$ 624,00 / R$ 156,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX015 | CT015 | Cartão 6x: R$ 624,00 / R$ 104,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX016 | CT016 | Rejeitar 7 parcelas | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX017 | CT017 | Rejeitar Pix parcelado | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX018 | CT018 | Rejeitar boleto parcelado | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX019 | CT019 | Aceitar boleto à vista | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX020 | CT020 | Rejeitar zero parcelas | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX021 | CT021 | Arredondar para R$ 179,99 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX022 | CT022 | Parcela: R$ 260,00 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX023 | CT023 | Gerar resumo completo | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX024 | CT024 | Aceitar `CARTÃO` | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |
| EX025 | CT025 | Cartão, bolsista, 4x: R$ 592,80 | Não executado: SDK ausente | Bloqueado | EV_AMBIENTE_BLOQUEADO.txt | — |

## Reteste e regressão

Não aplicáveis nesta execução: não houve defeito confirmado nem execução de suíte possível. Após disponibilizar o SDK, executar `dart test --reporter expanded`, repetir os cinco cenários manuais previstos e registrar os resultados reais.
