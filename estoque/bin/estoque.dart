
void main() {
  itemEstoque item1 = itemEstoque("Smartphone", 100, 500);
  itemEstoque item2 = itemEstoque("Notebook", 50, 2000);

  List<itemEstoque> lista = [item1, item2];

  for (itemEstoque list in lista) {
    print(list.produto);
    print(list.quantidade);
  }

  print(item1.adicionar(20));
  print(item2.retirada(10));

  itemEstoque item3 = itemEstoque("TV", 20, 2500);
  itemEstoque item4 = itemEstoque("Videogame", 10, 4000);
  itemEstoque item5 = itemEstoque("Computador", 5, 3000);

  lista.add(item3);
  lista.add(item4);
  lista.add(item5);

  for (itemEstoque list in lista) {
    print(list.produto);
    print(list.quantidade);
  }

  itemEstoque item6 = itemEstoque("Caixa de Som", 200, 300);
  itemEstoque item7 = itemEstoque("Ar condicionado", 10, 3000);
  itemEstoque item8 = itemEstoque("Geladeira", 60, 5000);

  lista.add(item6);
  lista.add(item7);
  lista.add(item8);

  print("-------------------------");

  for (itemEstoque list in lista) {
    print(list.produto);
    print(list.quantidade);
    print(list.preco);
  }

  item6.alterar(600);
  item7.alterar(3500);
  item8.alterar(8000);

  print("-------------------------");

  for (itemEstoque list in lista) {
    print(list.produto);
    print(list.quantidade);
    print(list.preco);
  }
}

class itemEstoque{
  String produto;
  int quantidade;
  double preco;

  itemEstoque(this.produto, this.quantidade, this.preco);

  int adicionar(int quantidade){
    this.quantidade += quantidade;
    return this.quantidade;
  }

  int retirada(int quantidade){
    this.quantidade -= quantidade;
    return this.quantidade;
  }

  double alterar(double preco){
    this.preco = preco;
    return this.preco;
  }
}