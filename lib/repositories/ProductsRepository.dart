import 'package:grocery_shop/models/Product.dart';

class ProductsRepository {
  List<Product> fetchAllProducts() {
    return [
      new Product("assets/images/iphone.png", "Mobile iphone ", 2.99, 250, 0),
      new Product("assets/images/mac.jpg", "mac Book Pro ", 2.35, 250, 1),
      new Product("assets/images/macbook.jpg", " macbook", 2.35, 250, 2),
    ];
  }
}
