import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'product.dart';
import 'cart.dart';
import 'cart_page.dart';
import 'fav.dart';
import 'fav_page.dart';
import 'profile_page.dart';

class CatalogScreen extends StatefulWidget {
  static final List<Product> products = [
    Product(
      name: 'БУКЕТ "ФЕВРАЛЬ"',
      description: 'Лизиантус - 5 шт., Эвкалипт - 0,5 пуч.',
      price: 5400,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/e9e/600_600_140cd750bba9870f18aada2478b24840a/myyp90wk1hsezlifl9mn2q5kwwln7kan.jpg',
    ),
    Product(
      name: 'КОРЗИНА "91 ГЕРБЕРА"',
      description: ' ',
      price: 23600,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/4c9/600_600_140cd750bba9870f18aada2478b24840a/4c9d2126122543d13fa833e3ea0dfba7.JPG',
    ),
    Product(
      name: 'ББУКЕТ ИЗ 9 ГОРТЕНЗИЙ',
      description: ' ',
      price: 6500,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/9d2/600_600_140cd750bba9870f18aada2478b24840a/9d2c8993e8456e5e01a3329376f0f54d.jpg',
    ),
    Product(
      name: 'БУКЕТ "КОНТРАСТ"',
      description: '25 белых роз',
      price: 7550,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/110/600_600_140cd750bba9870f18aada2478b24840a/1104c2e35239904695667ac8682c4437.jpg',
    ),
    Product(
      name: 'БУКЕТ 51 ТЮЛЬПАН АКЦИЯ',
      description: '',
      price: 7290,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/de0/600_600_140cd750bba9870f18aada2478b24840a/de0b15b6405d3d46da67c52e60a12263.jpg',
    ),
    Product(
      name: 'БУКЕТ "ЭНЕРГИЯ"',
      description: 'гербера – 25 шт., салал',
      price: 6300,
      imageUrl: 'https://www.floramarkt.su/upload/iblock/676/67618e5ffef3c622430440de8835ba3a.jpg',
    ),
    Product(
      name: 'БУКЕТ "ВЕРНОЕ СЕРДЦЕ"',
      description: '101 роза в форме сердца',
      price: 36500,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/0ef/600_600_140cd750bba9870f18aada2478b24840a/0eff931acdffb1857626674dda1b3819.jpg',
    ),
    Product(
      name: '«РИМСКИЕ КАНИКУЛЫ»',
      description: 'Альстромерия - 5, Ирис - 11, Гербера мини- 5, Гортензия - 1, Лизиантус - 2, Статица - 3, Салал',
      price: 7000,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/d48/600_600_140cd750bba9870f18aada2478b24840a/d483943dbde95ff1ee22e29c6c2c729c.JPG',
    ),
    Product(
      name: 'БУКЕТ «БАРХАТНЫЙ СЕЗОН»',
      description: 'Роза Кустовая - 2 шт., Хризантема Кустовая - 3 шт., Гвоздика - 10 шт.',
      price: 3000,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/423/600_600_140cd750bba9870f18aada2478b24840a/423b239640b36d01d7f0de774a03c53d.jpg',
    ),
    Product(
      name: 'БУКЕТ «ПОЛЕТ ШМЕЛЯ»',
      description: 'Роза - 3 шт. (50 см.), Хризантема Сантини - 3 шт., Хризантема кустовая - 3 шт., Альстромерия - 1 шт., Аспидистра',
      price: 3900,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/dcb/600_600_140cd750bba9870f18aada2478b24840a/dcb0e23bc5088aa598d86424559c58cd.jpg',
    ),
    Product(
      name: 'БУКЕТ «ОДНА НА МИЛЛИОН»',
      description: 'Роза Эквадор (50 см.) - 5 шт., Гермини - 5 шт., Роза кустовая (50 см.)- 10 шт., Гвоздика - 5 шт., Альстромерия - 4 шт., Салал - 0,5 пучка',
      price: 12500,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/ee1/600_600_140cd750bba9870f18aada2478b24840a/ee149f4b002ebdfb4304ca5e3f862ca2.jpg',
    ),
    Product(
      name: 'БУКЕТ «ОЧЕЙ ОЧАРОВАНЬЕ»',
      description: 'Роза - 7 (50 см.), Матрикария - 5, Хризантема Сантини - 3, Роза Кустовая - 3',
      price: 5150,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/4d4/600_600_140cd750bba9870f18aada2478b24840a/4d489bb30c14bef3b1c7ccdf971bdb46.jpg',
    ),
    Product(
      name: 'КОРЗИНА «ОТНОШЕНИЯ»',
      description: 'роза микс 31 шт.',
      price: 17705,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/68e/600_600_140cd750bba9870f18aada2478b24840a/68ee03fc3781f0f5b0680bdb8e892213.jpg',
    ),
    Product(
      name: 'БУКЕТ ИЗ 25 КУСТОВЫХ РОЗ',
      description: ' ',
      price: 7950,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/7f6/600_600_140cd750bba9870f18aada2478b24840a/7f6e368e4d146697afc5c5551f553da8.JPG',
    ),
    Product(
      name: 'БУКЕТ ИЗ 7 ГОРТЕНЗИЙ',
      description: ' ',
      price: 5500,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/295/600_600_140cd750bba9870f18aada2478b24840a/295feda2261b3a201e7fbda1509756bc.jpg',
    ),
    Product(
      name: 'БУКЕТ МИНИ 16-7 (С ВОДОЙ)',
      description: ' ',
      price: 4300,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/ea9/600_600_140cd750bba9870f18aada2478b24840a/ea963e3af44d9fb55cd7b01779328bab.jpg',
    ),
    Product(
      name: 'БУКЕТ МИНИ 16-6 (С ВОДОЙ)',
      description: ' ',
      price: 3900,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/268/600_600_140cd750bba9870f18aada2478b24840a/2684e5a28ba5eaa16ee879cd25cc0e2e.jpg',
    ),
    Product(
      name: 'БУКЕТ МИНИ 16-5 (С ВОДОЙ)',
      description: ' ',
      price: 3700,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/dfc/600_600_140cd750bba9870f18aada2478b24840a/dfc977fa134740a392c8b03f239156ee.jpg',
    ),
    Product(
      name: 'БУКЕТ МИНИ 16-4 (С ВОДОЙ)',
      description: ' ',
      price: 3000,
      imageUrl: 'https://www.floramarkt.su/upload/resize_cache/iblock/41c/600_600_140cd750bba9870f18aada2478b24840a/41ce818ff1db896b11d01ec2ea5a49d5.jpg',
    ),
    Product(
      name: 'Подсолнухи 9шт. Букет F057 Цветы Столицы',
      description: 'Букет ярких солнечных подсолнухов выглядит оригинально и стильно! Он точно удивить получателя',
      price: 3267,
      imageUrl: 'https://content3.flowwow-images.com/data/flowers/524x524/40/1687616121_30530940.jpg',
    ),
  ];
  final Profile? profile;



  const CatalogScreen({Key? key, this.profile}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {

  @override
  void initState() {
    super.initState();
  }

  void _filterProducts(String query) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Flowers'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: ProductSearch(_filterProducts));
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.6,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 6.0,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final product = CatalogScreen.products[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              product.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            product.name,
                            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            product.description,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${product.price} rub.',
                                style: const TextStyle(color: Colors.black, fontSize: 16.0),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.shopping_cart),
                                    onPressed: () {
                                      Cart.addItem(product);
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Added to cart: ${product.name}')),
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.favorite),
                                    onPressed: () {
                                      if (Fav.isFavorite(product)) {
                                        Fav.removeItem(product);
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Removed from favorites: ${product.name}')),
                                        );
                                      } else {
                                        Fav.addItem(product);
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Added to favorites: ${product.name}')),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: CatalogScreen.products.length,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavPage()),
              );
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.favorite),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(cartItems: Cart.cartItems)),
              );
            },
            backgroundColor: Colors.greenAccent,
            child: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(profile: nullProfile, purchase: null),
                ),
              );
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.person),
          ),

        ],
      ),
    );
  }
}
class ProductSearch extends SearchDelegate<String> {
  final Function(String) filterCallback;

  ProductSearch(this.filterCallback);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          filterCallback('');
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    filterCallback(query);
    return ListView.builder(
      itemCount: CatalogScreen.products.length,
      itemBuilder: (context, index) {
        final product = CatalogScreen.products[index];
        if (product.name.toLowerCase().contains(query.toLowerCase())) {
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            onTap: () {
              // Handle tap on search result
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(); // You can customize this if you want to show search suggestions
  }
}

