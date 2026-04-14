import 'package:animal/animal.dart';

class Cachorro implements Animal{
  String nome;
  int idade;

  Cachorro({
    required this.nome,
    required this.idade,
  });
  
  @override
  void emitirSom(){
    print("O cachorro late.");
  }

  @override
  void costume(){
    print("O cachorro está abanando o rabo.");
  }
}