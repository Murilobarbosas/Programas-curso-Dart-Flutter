import 'package:animal/cachorro.dart';
import 'package:animal/gato.dart';

void main() {
  Cachorro cachorro = Cachorro(nome: "Rex", idade: 3);
  Gato gato = Gato(nome: "Mimi", idade: 2);

  cachorro.emitirSom();
  cachorro.costume();
  gato.emitirSom();
  gato.costume();
}
