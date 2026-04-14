
void main() {
  Conta matheus = Conta("Matheus", 1000);
  Conta roberta = Conta("Roberta", 2000);

  List<Conta> lista= [matheus, roberta];

  for (Conta list in lista) {
    print(list.titular);
    print(list.saldo);
  }

  roberta.saldo = 5000;

  for (Conta list in lista) {
    print(list.titular);
    print(list.saldo);
  }
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}