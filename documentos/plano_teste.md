# Plano de Teste — Sistema de Matrículas em Cursos

## 1. Identificação

| Item | Informação |
|---|---|
| Sistema | Sistema de Matrículas em Cursos |
| Versão | 1.0.0 |
| Turma | 3B |
| Integrantes | Lucas Miguel e Guilherme José |
| Data | 14/08/2026 |
| Responsável pelo documento | Equipe de Qualidade de Software |

## 2. Objetivo

Verificar se a matrícula aceita somente dados válidos, aplica descontos e acréscimos corretamente, calcula as parcelas e apresenta um resumo conforme as regras de negócio.

## 3. Escopo

Serão testadas as validações dos campos, idade mínima, curso, valor, formas de pagamento, quantidade de parcelas, restrições de Pix e boleto, descontos, acréscimo para mais de três parcelas, arredondamento, cálculo das parcelas e resumo.

## 4. Fora do escopo

Interface gráfica, banco de dados, autenticação, persistência, integrações externas, desempenho sob carga e segurança não fazem parte desta versão de linha de comando.

## 5. Requisitos funcionais e regras de negócio

| ID | Regra |
|---|---|
| RN01 | Nome do estudante e curso são obrigatórios e não podem conter somente espaços. |
| RN02 | A idade mínima é 14 anos. |
| RN03 | O valor do curso deve ser maior que zero. |
| RN04 | As formas aceitas são Pix, cartão e boleto, sem distinção entre maiúsculas e minúsculas. |
| RN05 | A quantidade de parcelas deve estar entre 1 e 6. |
| RN06 | Pix e boleto somente podem ser pagos em uma parcela. |
| RN07 | Pix concede 10% de desconto; bolsista concede 5%; o total não pode ultrapassar 15%. |
| RN08 | Mais de três parcelas acrescentam 4% após o desconto. |
| RN09 | Valores final e da parcela são arredondados para duas casas decimais. |
| RN10 | O resumo informa estudante, curso, forma de pagamento, parcelas, valor final e valor por parcela. |

## 6. Tipos de teste

| Tipo | Justificativa |
|---|---|
| Unitário | Verifica isoladamente os métodos da classe `Matricula`. |
| Funcional | Confirma os resultados observáveis das regras de matrícula. |
| Caixa-preta | Exercita entradas e saídas, incluindo classes de equivalência e limites. |
| Caixa-branca | Cobre os ramos das condições de desconto, validação e parcelamento. |
| Sistema | Executa o programa em `bin/` e confere o resumo apresentado. |
| Regressão | Reexecuta a suíte completa após qualquer alteração. |
| Reteste | Reexecuta o caso que detectou um defeito após sua correção. |

## 7. Ambiente

Ubuntu Linux; projeto Dart 1.0.0; Visual Studio Code; pacote `test` 1.31.2; SDK requerido pelo projeto: Dart ^3.12.0. Computador e versão efetivamente usados devem ser registrados na evidência de execução.

## 8. Dados de teste

Válidos: Ana Souza, 14 ou 16 anos, Programação, R$ 600,00, Pix/cartão/boleto e 1 a 6 parcelas conforme a forma. Inválidos: nome/curso vazio, 13 anos, valor zero ou negativo, forma inexistente, zero ou sete parcelas, Pix e boleto parcelados. Limites: 14 anos, R$ 0,00, 1, 3, 4, 6 e 7 parcelas. Combinações: Pix + bolsista, cartão + quatro parcelas e valor com casas decimais.

## 9. Critérios de entrada

Código-fonte e requisitos disponíveis; dependências instaladas; ambiente Dart compatível; casos de teste revisados; dados de teste preparados.

## 10. Critérios de saída

Todos os casos executados e registrados, evidências salvas, nenhuma falha crítica ou alta aberta e relatório final concluído.

## 11. Critérios de suspensão

Ausência ou incompatibilidade do SDK Dart, dependências indisponíveis, falha que impeça a execução da suíte ou requisito sem definição suficiente.

## 12. Critérios de retomada

SDK e dependências disponíveis, ambiente restaurado, requisito esclarecido e bloqueio registrado.

## 13. Riscos

1. SDK Dart ausente ou incompatível impede execução.
2. Arredondamento de parcelas pode gerar diferença de centavos na soma.
3. Alterações nas regras de desconto invalidam resultados esperados.
4. Falta de evidência reduz a auditabilidade dos resultados.
5. Identificação incompleta de turma e integrantes compromete a entrega acadêmica.

## 14. Responsabilidades

Lucas Miguel e Guilherme José dividirão os papéis de analista, executor, desenvolvedor responsável por correções, responsável pelas evidências e responsável pela documentação.

## 15. Entregáveis

`lib/matricula.dart`, `bin/sistema_matriculas.dart`, testes automatizados, plano, casos, registro de execução, evidências, relatório de defeitos, matriz de rastreabilidade e relatório final.
