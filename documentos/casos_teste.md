# Casos de Teste

| ID | Requisito | Cenário | Pré-condição | Dados de entrada | Procedimento | Resultado esperado | Tipo / classificação | Prioridade |
|---|---|---|---|---|---|---|---|---|
| CT001 | RN01 | Nome vazio | Classe instanciada | nome `''` | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT002 | RN01 | Nome só com espaços | Classe instanciada | nome `'   '` | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT003 | RN01 | Curso vazio | Classe instanciada | curso `''` | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT004 | RN02 | Estudante com 13 anos | Classe instanciada | idade 13 | Calcular valor final | Lança `ArgumentError` | Limite / abaixo do limite | Alta |
| CT005 | RN02 | Estudante com 14 anos | Classe instanciada | idade 14 | Calcular valor final | Valor R$ 600,00 | Limite / limite inferior | Alta |
| CT006 | RN03 | Valor igual a zero | Classe instanciada | valor 0 | Calcular valor final | Lança `ArgumentError` | Limite / limite inferior | Alta |
| CT007 | RN03 | Valor negativo | Classe instanciada | valor -1 | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT008 | RN04 | Forma inexistente | Classe instanciada | dinheiro | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT009 | RN04, RN07 | Pix com desconto | Classe instanciada | Pix, R$ 600 | Calcular valor final | R$ 540,00 | Funcional / válido | Alta |
| CT010 | RN07 | Estudante bolsista | Classe instanciada | cartão, bolsista | Calcular valor final | R$ 570,00 | Funcional / válido | Alta |
| CT011 | RN04, RN07 | Pix e bolsista | Classe instanciada | PIX, bolsista | Calcular valor final | R$ 510,00 | Caixa-branca / combinação de regras | Alta |
| CT012 | RN07 | Não bolsista | Classe instanciada | cartão, não bolsista | Calcular valor final | R$ 600,00 | Funcional / válido | Média |
| CT013 | RN05, RN08, RN09 | Cartão em 3 parcelas | Classe instanciada | cartão, 3x | Calcular final e parcela | R$ 600,00 e R$ 200,00 | Limite / válido | Alta |
| CT014 | RN05, RN08, RN09 | Cartão em 4 parcelas | Classe instanciada | cartão, 4x | Calcular final e parcela | R$ 624,00 e R$ 156,00 | Limite / combinação de regras | Alta |
| CT015 | RN05, RN08 | Cartão em 6 parcelas | Classe instanciada | cartão, 6x | Calcular final e parcela | R$ 624,00 e R$ 104,00 | Limite / limite superior | Alta |
| CT016 | RN05 | Cartão em 7 parcelas | Classe instanciada | cartão, 7x | Calcular valor final | Lança `ArgumentError` | Limite / acima do limite | Alta |
| CT017 | RN05, RN06 | Pix parcelado | Classe instanciada | Pix, 2x | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT018 | RN05, RN06 | Boleto parcelado | Classe instanciada | boleto, 2x | Calcular valor final | Lança `ArgumentError` | Caixa-preta / inválido | Alta |
| CT019 | RN04, RN06 | Boleto à vista | Classe instanciada | boleto, 1x | Calcular valor final | R$ 600,00 | Funcional / válido | Média |
| CT020 | RN05 | Zero parcelas | Classe instanciada | cartão, 0x | Calcular valor final | Lança `ArgumentError` | Limite / abaixo do limite | Alta |
| CT021 | RN09 | Arredondamento | Classe instanciada | R$ 199,99, Pix | Calcular valor final | R$ 179,99 | Funcional / válido | Média |
| CT022 | RN08, RN09 | Valor de cada parcela | Classe instanciada | R$ 1.000,00, cartão, 4x | Calcular parcela | R$ 260,00 | Funcional / válido | Alta |
| CT023 | RN10 | Geração do resumo | Classe instanciada | cartão, 4x, bolsista | Gerar resumo | Todos os seis campos e valores corretos | Sistema / combinação de regras | Alta |
| CT024 | RN04 | Cartão em maiúsculas | Classe instanciada | `CARTÃO` | Calcular valor final | R$ 600,00 | Caixa-preta / válido | Média |
| CT025 | RN07, RN08 | Desconto e acréscimo combinados | Classe instanciada | cartão, bolsista, 4x | Calcular valor final | R$ 592,80 | Caixa-branca / combinação de regras | Alta |
