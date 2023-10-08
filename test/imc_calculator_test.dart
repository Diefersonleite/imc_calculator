import 'package:imc_calculator/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('retornaIMC', () {
    Pessoa pessoa = Pessoa();
    pessoa.setPeso(60);
    pessoa.setAltura(1.70);
    expect(pessoa.retornaIMC(), 20.761245674740486);
  });
}
