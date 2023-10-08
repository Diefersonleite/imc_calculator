import 'package:imc_calculator/classes/pessoa.dart';
import 'package:imc_calculator/models/utils.dart';

void execute() {
  var pessoa = Pessoa();
  print("Bem-vindo a calculador de IMC!");
  String nome = Utils.lerString("Digite o seu nome: ");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoExcecao();
    }
  } on NomeInvalidoExcecao {
    print(NomeInvalidoExcecao);
  } catch (e) {
    print(e);
  }

  double? peso;
  do {
    peso = Utils.lerDouble("Digite seu peso em kg: ");
    if (peso != null) {
      pessoa.setPeso(peso);
    } else {
      print("Digite o valor correto do peso!");
    }
  } while (peso == null);

  double? altura;
  do {
    altura = Utils.lerDouble("Digite sua altura em metros: ");
    if (altura != null) {
      pessoa.setAltura(altura);
    } else {
      print("Digite o valor correto da altura!");
    }
  } while (altura == null);

  double? imc = pessoa.retornaIMC();
  String imc2Dec = imc.toStringAsFixed(2);

  if (imc < 16) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Magreza grave");
  } else if (imc >= 16 && imc < 17) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Magreza moderada");
  } else if (imc >= 17 && imc < 18.5) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Magreza leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Saudável");
  } else if (imc >= 25 && imc < 30) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Obesidade grau 1");
  } else if (imc >= 35 && imc < 40) {
    print("O seu IMC é $imc2Dec. Sua classificação é: Obesidade grau 2");
  } else {
    print("O seu IMC é ${imc.toStringAsFixed(2)}. Sua classificação é: Obesidade grau 3");
  }
}


