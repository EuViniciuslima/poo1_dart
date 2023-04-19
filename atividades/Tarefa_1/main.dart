class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

class Item {
  Produto produto;
  int quantidade;

  Item(this.produto, this.quantidade);

  double getSubtotal() => produto.preco * quantidade;
}

class Venda {
  List<Item> itens;

  Venda(this.itens);

  double getTotal() =>
      itens.map((item) => item.getSubtotal()).reduce((a, b) => a + b);
}

void main() {
  Produto pastel = Produto('Pastel', 3.5);
  Produto coxinha = Produto('Coxinha', 4.0);
  Produto empada = Produto('Empada', 2.75);
  Produto esfirra = Produto('Esfirra', 5.25);

  Item item_1 = Item(pastel, 4);
  Item item_2 = Item(coxinha, 6);
  Item item_3 = Item(empada, 5);
  Item item_4 = Item(esfirra, 2);

  Venda venda = Venda([item_1, item_2, item_3, item_4]);

  print('\nItens comprados:');
    
  print('${item_1.produto.nome} (Valor: R\$ ${item_1.produto.preco.toStringAsFixed(2)}) - Total comprado: ${item_1.quantidade}');

  print('${item_2.produto.nome} (Valor: R\$ ${item_2.produto.preco.toStringAsFixed(2)}) - Total comprado: ${item_2.quantidade}');

  print('${item_3.produto.nome} (Valor: R\$ ${item_3.produto.preco.toStringAsFixed(2)}) - Total comprado: ${item_3.quantidade}');

  print('${item_4.produto.nome} (Valor: R\$ ${item_4.produto.preco.toStringAsFixed(2)}) - Total comprado: ${item_4.quantidade} \n');
  
  print('Total da venda: R\$ ${venda.getTotal().toStringAsFixed(2)}');
    
    
}