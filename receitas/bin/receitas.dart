
void main() {
  List<Receita> receita;
  Receita Macarrao = Receita("Macarrão ao pesto", 20);
  Receita Lasanha = Receita("Lasanha 4 queijos", 32);
  Receita Burrata = Receita("Burrata com pesto", 28);

  receita = [Macarrao, Lasanha, Burrata];

  for (Receita rec in receita) {
    print(rec.nome);
    print(rec.preco);
  }
}

class Receita{
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}