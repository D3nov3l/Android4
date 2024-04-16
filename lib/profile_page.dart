import 'package:flutter/material.dart';

import 'cart.dart';

class Purchase {
  final String productName;
  final double price;
  final DateTime date;

  Purchase({
    required this.productName,
    required this.price,
    required this.date,
  });
}

class Profile {
  final String avatarUrl;
  final String fullName;
  final String phoneNumber;
  final String address;
  final List<Purchase> purchaseHistory;

  Profile({
    required this.avatarUrl,
    required this.fullName,
    required this.phoneNumber,
    required this.address,
    required this.purchaseHistory,
  });
}

class ProfilePage extends StatelessWidget {
  final Profile profile;
  final Purchase? purchase;

  const ProfilePage({Key? key, required this.profile, required this.purchase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cart.clearCart();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profile.avatarUrl),
            ),
            const SizedBox(height: 20),
            Text(
              'Full Name: ${profile.fullName}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone Number: ${profile.phoneNumber}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Address: ${profile.address}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Purchase History:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...[
            const SizedBox(height: 10),
                  if (purchase != null) ...[
                    Text('Product Name: ${purchase!.productName}'),
                    Text('Price: \$${purchase!.price}'),
                    Text('Date: ${purchase!.date}'),
                  ],
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
