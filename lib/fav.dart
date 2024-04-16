import 'product.dart';

class Fav {
  static List<Product> favItems = [];

  static void addItem(Product product) {
    if (!favItems.contains(product)) {
      favItems.add(product);
    }
  }

  static void removeItem(Product product) {
    favItems.remove(product);
  }

  static bool isFavorite(Product product) {
    return favItems.contains(product);
  }
}