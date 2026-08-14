class Matricula {
  final String nomeEstudante;
  final int idade;
  final String curso;
  final double valorCurso;
  final String formaPagamento;
  final int quantidadeParcelas;
  final bool bolsista;

  Matricula({
    required this.nomeEstudante,
    required this.idade,
    required this.curso,
    required this.valorCurso,
    required this.formaPagamento,
    required this.quantidadeParcelas,
    required this.bolsista,
  });

  double calcularValorFinal() {
    validarDados();

    double valorFinal = valorCurso;
    double percentualDesconto = 0;

    if (formaPagamento.toLowerCase() == 'pix') {
      percentualDesconto += 10;
    }

    if (bolsista) {
      percentualDesconto += 5;
    }

    if (percentualDesconto > 15) {
      percentualDesconto = 15;
    }

    valorFinal -= valorFinal * percentualDesconto / 100;

    if (quantidadeParcelas > 3) {
      valorFinal += valorFinal * 4 / 100;
    }

    return double.parse(valorFinal.toStringAsFixed(2));
  }

  double calcularValorParcela() {
    final valorFinal = calcularValorFinal();

    return double.parse(
      (valorFinal / quantidadeParcelas).toStringAsFixed(2),
    );
  }

  String gerarResumo() {
    final valorFinal = calcularValorFinal();
    final valorParcela = calcularValorParcela();

    return '''
Estudante: $nomeEstudante
Curso: $curso
Forma de pagamento: $formaPagamento
Quantidade de parcelas: $quantidadeParcelas
Valor final: R\$ ${valorFinal.toStringAsFixed(2)}
Valor da parcela: R\$ ${valorParcela.toStringAsFixed(2)}
''';
  }

  void validarDados() {
    if (nomeEstudante.trim().isEmpty) {
      throw ArgumentError('O nome do estudante é obrigatório.');
    }

    if (idade < 14) {
      throw ArgumentError('A idade mínima é 14 anos.');
    }

    if (curso.trim().isEmpty) {
      throw ArgumentError('O nome do curso é obrigatório.');
    }

    if (valorCurso <= 0) {
      throw ArgumentError('O valor do curso deve ser maior que zero.');
    }

    final forma = formaPagamento.toLowerCase();

    if (forma != 'pix' &&
        forma != 'cartão' &&
        forma != 'boleto') {
      throw ArgumentError('Forma de pagamento inválida.');
    }

    if (quantidadeParcelas <= 0 || quantidadeParcelas > 6) {
      throw ArgumentError(
        'A quantidade de parcelas deve estar entre 1 e 6.',
      );
    }

    if (forma == 'pix' && quantidadeParcelas > 1) {
      throw ArgumentError('Pagamento via Pix não pode ser parcelado.');
    }

    if (forma == 'boleto' && quantidadeParcelas > 1) {
      throw ArgumentError(
        'Pagamento via boleto não pode ser parcelado.',
      );
    }
  }
}
