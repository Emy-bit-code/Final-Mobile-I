import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final VoidCallback onTap;

  const ProductItem({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product['nome'] ?? ''),
      subtitle: Text('Preço: R\$ ${product['preco']}'),
      onTap: onTap,
    );
  }
}
