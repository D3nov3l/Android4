import 'package:flutter/material.dart';
import 'cart.dart';
import 'profile_page.dart';

class CartPage extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartPage({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    double totalCost = Cart.getTotalPrice();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green[300],
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final item = cartItems[index];
            return ListTile(
              leading: Image.network(item.product.imageUrl),
              title: Text(item.product.name),
              subtitle: Text('${item.product.price} ₽ x ${item.quantity}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${item.product.price * item.quantity} ₽'),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          int quantityToRemove = 1;

                          return AlertDialog(
                            title: const Text('Delete Product'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Amount:'),
                               const  SizedBox(height: 16),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  initialValue: '1',
                                  onChanged: (value) {
                                    quantityToRemove = int.tryParse(value) ?? 1;
                                  },
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Cart.removeQuantity(item.product, quantityToRemove);
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Delete'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Delete'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Cart.clearCart();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Delete all', style: TextStyle(fontSize: 16)),
            ),
            Text(
              'Cost: $totalCost ₽',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                final item = cartItems.first;
                final purchase = Purchase(
                  productName: item.product.name,
                  price: item.product.price * item.quantity,
                  date: DateTime.now(),
                );
              },

              style: ElevatedButton.styleFrom(
               backgroundColor: Colors.yellow,
              ),

              child: const Text('Pay', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
