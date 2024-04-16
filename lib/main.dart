import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_registration_screen.dart';
import 'catalog_screen.dart';
import 'product.dart'; 
import 'profile_page.dart';
import 'registration_screen.dart';

void main() {
  runApp(const MyApp());
}

final Profile nullProfile = Profile(
  avatarUrl: 'https://cdn.myanimelist.net/r/360x360/images/characters/7/468390.jpg?s=06b1ea966937fa2219406ecb8a9dae55',
  fullName: 'ЕДА',
  phoneNumber: '+7(777)777-77-77',
  address: 'ул Рязанка 6',
  purchaseHistory: [],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:Colors.white,
        hintColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/catalog',
      routes: {
        '/': (context) => const RegistrationScreen(),
        '/catalog': (context) => CatalogScreen(profile: nullProfile),
        '/product': (context) => ProductPage(products: CatalogScreen.products),
        '/new_registration': (context) => const NewRegistrationScreen(),
      },
    );
  }
}
