import 'package:sistema_matriculas/matricula.dart';
import 'package:test/test.dart';

Matricula criarMatricula({
  String nomeEstudante = 'Ana Souza',
  int idade = 16,
  String curso = 'Programação',
  double valorCurso = 600.00,
  String formaPagamento = 'cartão',
  int quantidadeParcelas = 1,
  bool bolsista = false,
}) {
  return Matricula(
    nomeEstudante: nomeEstudante,
    idade: idade,
    curso: curso,
    valorCurso: valorCurso,
    formaPagamento: formaPagamento,
    quantidadeParcelas: quantidadeParcelas,
    bolsista: bolsista,
  );
}

void main() {
  group('Testes de validação da matrícula', () {
    test('CT001 - deve rejeitar nome vazio', () {
      final matricula = criarMatricula(nomeEstudante: '');
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT002 - deve rejeitar nome contendo somente espaços', () {
      final matricula = criarMatricula(nomeEstudante: '   ');
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT003 - deve rejeitar curso vazio', () {
      final matricula = criarMatricula(curso: '');
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT004 - deve rejeitar estudante com 13 anos', () {
      final matricula = criarMatricula(idade: 13);
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT005 - deve aceitar estudante com exatamente 14 anos', () {
      expect(criarMatricula(idade: 14).calcularValorFinal(), 600.00);
    });

    test('CT006 - deve rejeitar valor do curso igual a zero', () {
      final matricula = criarMatricula(valorCurso: 0);
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT007 - deve rejeitar valor do curso negativo', () {
      final matricula = criarMatricula(valorCurso: -1);
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT008 - deve rejeitar forma de pagamento inexistente', () {
      final matricula = criarMatricula(formaPagamento: 'dinheiro');
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });
  });

  group('Testes dos descontos', () {
    test('CT009 - Pix deve aplicar desconto de 10%', () {
      expect(
        criarMatricula(formaPagamento: 'pix').calcularValorFinal(),
        540.00,
      );
    });

    test('CT010 - bolsista deve aplicar desconto de 5%', () {
      expect(criarMatricula(bolsista: true).calcularValorFinal(), 570.00);
    });

    test('CT011 - Pix e bolsista devem aplicar desconto total de 15%', () {
      expect(
        criarMatricula(formaPagamento: 'PIX', bolsista: true)
            .calcularValorFinal(),
        510.00,
      );
    });

    test('CT012 - não bolsista no cartão não deve receber desconto', () {
      expect(criarMatricula().calcularValorFinal(), 600.00);
    });
  });

  group('Testes dos parcelamentos', () {
    test('CT013 - cartão em três parcelas não deve ter acréscimo', () {
      final matricula = criarMatricula(quantidadeParcelas: 3);
      expect(matricula.calcularValorFinal(), 600.00);
      expect(matricula.calcularValorParcela(), 200.00);
    });

    test('CT014 - cartão em quatro parcelas deve ter acréscimo de 4%', () {
      final matricula = criarMatricula(quantidadeParcelas: 4);
      expect(matricula.calcularValorFinal(), 624.00);
      expect(matricula.calcularValorParcela(), 156.00);
    });

    test('CT015 - cartão em seis parcelas deve ter acréscimo de 4%', () {
      final matricula = criarMatricula(quantidadeParcelas: 6);
      expect(matricula.calcularValorFinal(), 624.00);
      expect(matricula.calcularValorParcela(), 104.00);
    });

    test('CT016 - deve rejeitar cartão em sete parcelas', () {
      final matricula = criarMatricula(quantidadeParcelas: 7);
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT017 - deve rejeitar Pix parcelado', () {
      final matricula = criarMatricula(
        formaPagamento: 'pix',
        quantidadeParcelas: 2,
      );
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT018 - deve rejeitar boleto parcelado', () {
      final matricula = criarMatricula(
        formaPagamento: 'boleto',
        quantidadeParcelas: 2,
      );
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });

    test('CT019 - deve aceitar boleto em parcela única', () {
      expect(
        criarMatricula(formaPagamento: 'boleto').calcularValorFinal(),
        600.00,
      );
    });

    test('CT020 - deve rejeitar quantidade de parcelas igual a zero', () {
      final matricula = criarMatricula(quantidadeParcelas: 0);
      expect(matricula.calcularValorFinal, throwsArgumentError);
    });
  });

  group('Testes de cálculo e apresentação', () {
    test('CT021 - deve arredondar o valor final para duas casas decimais', () {
      expect(
        criarMatricula(valorCurso: 199.99, formaPagamento: 'pix')
            .calcularValorFinal(),
        179.99,
      );
    });

    test('CT022 - deve calcular o valor de cada parcela', () {
      final matricula = criarMatricula(valorCurso: 1000, quantidadeParcelas: 4);
      expect(matricula.calcularValorParcela(), 260.00);
    });

    test('CT023 - deve gerar resumo completo da matrícula', () {
      final resumo = criarMatricula(quantidadeParcelas: 4, bolsista: true)
          .gerarResumo();
      expect(resumo, contains('Estudante: Ana Souza'));
      expect(resumo, contains('Curso: Programação'));
      expect(resumo, contains('Forma de pagamento: cartão'));
      expect(resumo, contains('Quantidade de parcelas: 4'));
      expect(resumo, contains('Valor final: R\$ 592.80'));
      expect(resumo, contains('Valor da parcela: R\$ 148.20'));
    });

    test('CT024 - deve aceitar a forma de pagamento cartão em maiúsculas', () {
      expect(
        criarMatricula(formaPagamento: 'CARTÃO').calcularValorFinal(),
        600.00,
      );
    });

    test('CT025 - deve combinar desconto e acréscimo no parcelamento', () {
      expect(
        criarMatricula(
          quantidadeParcelas: 4,
          bolsista: true,
        ).calcularValorFinal(),
        592.80,
      );
    });
  });
}
