import 'package:flutter/material.dart';
import 'product.dart';
import 'fav.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.green,
      ),
        body: Container(
          color: Colors.green[300],
          child: ListView.builder(
            itemCount: Fav.favItems.length,
            itemBuilder: (context, index) {
              final Product product = Fav.favItems[index];
              return ListTile(
                leading: Image.network(product.imageUrl),
                title: Text(product.name),
                subtitle: Text('${product.price} rub.'),
                trailing: IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    Fav.removeItem(product);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Removed from favorites: ${product.name}')),
                    );
                    },
                ),
              );
              },
          ),
        )
    );
  }
}
