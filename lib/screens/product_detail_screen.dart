import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final dynamic product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['nome'] ?? 'Detalhes')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${product['id']}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Nome: ${product['nome']}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Preço: R\$ ${product['preco']}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
