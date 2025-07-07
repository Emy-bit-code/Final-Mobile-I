class Product {
  final int id;
  final String nome;
  final double preco;

  Product({required this.id, required this.nome, required this.preco});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nome: json['nome'],
      preco: (json['preco'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'preco': preco};
  }
}
