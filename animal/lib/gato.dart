// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animal/animal.dart';

class Gato implements Animal {
  String nome;
  int idade;
  
  Gato({
    required this.nome,
    required this.idade,
  });
  
  @override
  void emitirSom(){
    print("O gato miou.");
  }

  @override
  void costume(){
    print("O gato está arranhando os móveis.");
  }
}
