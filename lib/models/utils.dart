import 'dart:convert';
import 'dart:io';

class Utils {

  static String lerString(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble(String texto) {
    var value = lerString(texto);
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

}

class NomeInvalidoExcecao implements Exception {
  String error() => "Nome invalido";

  @override
  String toString() {
    return "NomeInvalidoExcecao: ${error()}";
  }
}