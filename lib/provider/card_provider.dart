import 'package:flutter/material.dart';
import 'package:grocery_shop/models/Cart.dart';
import 'package:grocery_shop/models/Order.dart';
import 'package:grocery_shop/models/Product.dart';

class CartProvider extends ChangeNotifier {
  // var
  static int _orderId = 0;
  Cart _currentCart = Cart();

  Order _lastOrder;

  List<Cart> _cartList = [];
  List<Order> _orderList = [];

  // getter
  Cart get cart => _currentCart;

  Order get lastOrder => _lastOrder;

  List<Cart> get cartList => _cartList;

  List<Order> get orderList => _orderList;

  // add order ot cart
  void addOrderToCart(Product product, int quantity) {
    _lastOrder = new Order(product, quantity, _orderId++);
    _currentCart.addOrder(_lastOrder);

    _cartList.add(_currentCart);
    _orderList.add(_lastOrder);

    notifyListeners();
  }

  void removerOrderOfCart(Order order) {
    _currentCart.removeOrder(order);
    _cartList.add(_currentCart);

    notifyListeners();
  }
}
