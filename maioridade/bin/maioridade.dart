import 'dart:io';

void main(List<String> arguments) {
  print("Informe a sua idade:");
  int idade = int.parse(stdin.readLineSync()!);
  print("Informe seu pais:");
  String? pais = stdin.readLineSync();
  if ((pais == 'brasil' && idade >= 18) || 
      (pais == 'eua' && idade >= 16) || 
      (pais == 'japão' && idade >= 20)) {
    print('Você pode dirigir um veículo no $pais.');
  } else {
    print('Você não pode dirigir um veículo no $pais.');
  }
}