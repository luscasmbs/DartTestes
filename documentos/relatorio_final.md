# Relatório Final — Sistema de Matrículas em Cursos

## Identificação

| Item | Informação |
|---|---|
| Versão | 1.0.0 |
| Grupo | Lucas Miguel e Guilherme José — Turma 3B |
| Período | 14/08/2026 |

## Resumo da execução

| Indicador | Quantidade |
|---|---:|
| Casos planejados | 25 |
| Casos executados | 0 |
| Aprovados | 0 |
| Reprovados | 0 |
| Bloqueados | 25 |
| Não executados | 0 |

O ambiente não dispunha do executável `dart`; por isso a suíte automatizada e as cinco execuções manuais não puderam ser realizadas. O bloqueio e a mensagem do terminal estão registrados em `documentos/evidencias/EV_AMBIENTE_BLOQUEADO.txt`.

## Defeitos

Encontrados: 0; corrigidos: 0; reabertos: 0; em aberto: 0. Não foi possível confirmar defeitos dinâmicos sem executar o programa.

## Cobertura

Os dez requisitos RN01–RN10 possuem pelo menos um caso associado. Não há requisito sem caso nem funcionalidade fora do escopo funcional sem planejamento; porém nenhuma funcionalidade foi efetivamente verificada em execução devido ao bloqueio.

## Riscos residuais

Além dos riscos do plano, ainda há risco de falha de compilação, incompatibilidade de dependências ou divergência do comportamento em tempo de execução, pois a suíte não foi iniciada. A soma de parcelas arredondadas também merece um caso de reconciliação em uma versão futura.

## Conclusão

**Sistema não avaliado por bloqueio.** Embora código, casos e documentação estejam preparados, não há evidência de execução que permita recomendar a liberação. A decisão deve ser revisada após instalar Dart ^3.12.0 ou superior, executar `dart pub get`, `dart test --reporter expanded` e cinco cenários manuais, atualizando este relatório conforme os resultados reais.

# Questões para Reflexão

## 1. Qual é a diferença entre executar um programa e testar um programa?

Executar um programa é simplesmente usá-lo para produzir uma saída. Testar é executar o programa de forma planejada, com dados definidos e resultado esperado, para verificar se ele atende aos requisitos e registrar a evidência do resultado.

## 2. Por que um teste aprovado precisa possuir evidência?

A evidência comprova que o caso foi realmente executado e que o resultado obtido foi comparado ao esperado. Ela permite que outra pessoa confirme o resultado, facilite auditorias e apoie a investigação de problemas futuros.

## 3. Um sistema com todos os testes aprovados está necessariamente livre de defeitos?

Não. Os testes aprovados mostram apenas que os cenários executados funcionaram como esperado. Ainda podem existir defeitos em cenários não testados, combinações de dados não previstas, integrações ou requisitos que não foram cobertos.

## 4. Qual foi o caso de teste mais importante do projeto?

O caso mais importante é o que verifica o cálculo do valor final com pagamento via Pix e estudante bolsista. Ele valida a combinação das duas regras de desconto, o limite total de 15% e o valor final cobrado, que é uma regra central do sistema.

## 5. Qual defeito apresentou maior impacto?

Não houve defeito confirmado, pois a execução foi bloqueada pela ausência do SDK Dart. Caso fosse encontrado, um defeito no cálculo de desconto ou acréscimo teria maior impacto por afetar diretamente o valor cobrado do estudante.

## 6. Qual é a diferença entre reteste e regressão?

Reteste repete especificamente o caso que identificou um defeito para confirmar a correção. Regressão executa a suíte mais ampla para verificar se a alteração não prejudicou funcionalidades que já funcionavam.

## 7. Como a matriz de rastreabilidade ajudou o grupo?

Ela relaciona cada requisito aos casos que o verificam, permitindo identificar que todos os requisitos possuem cobertura planejada e mostrando claramente que a validação permanece bloqueada pelo ambiente.

## 8. O plano inicial precisou ser alterado durante a execução?

O planejamento funcional não foi alterado. Foi necessário registrar a indisponibilidade do SDK Dart como critério de suspensão e refletir esse bloqueio no registro de execução, na matriz e no relatório final.

## 9. Quais testes deveriam ser acrescentados em uma próxima versão?

Devem ser acrescentados testes que conciliem a soma das parcelas arredondadas com o valor final, testes para diferentes valores decimais, mensagens de erro específicas e possíveis regras para a forma sem acento (`cartao`), caso ela passe a ser um requisito.

## 10. O sistema poderia ser liberado para os usuários?

Não no estado atual da avaliação. O código e os testes estão preparados, mas não existem resultados de execução nem evidências funcionais suficientes para recomendar a liberação.
