import 'package:flutter/material.dart';
import 'package:grocery_shop/provider/card_provider.dart';
import 'package:provider/provider.dart';

import 'screens/ui/HomeScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => CartProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'JosefinSans',
      ),
      home: HomeScreen(),
    );
  }
}
