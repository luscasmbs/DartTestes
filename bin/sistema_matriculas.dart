import 'package:sistema_matriculas/matricula.dart';

void main() {
  final matricula = Matricula(
    nomeEstudante: 'Mariana Silva',
    idade: 16,
    curso: 'Desenvolvimento de Sistemas',
    valorCurso: 600.00,
    formaPagamento: 'cartão',
    quantidadeParcelas: 4,
    bolsista: true,
  );

  print(matricula.gerarResumo());
}
