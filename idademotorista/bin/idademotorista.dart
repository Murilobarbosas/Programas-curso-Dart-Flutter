import 'dart:io';

void main(List<String> arguments) {
  print("Informe a idade");
  int idade = int.parse(stdin.readLineSync()!);
  if(idade<18){
    print("Voce nao pode dirigir");
  }else{
    print("Voce pode dirigir");
  }
}
