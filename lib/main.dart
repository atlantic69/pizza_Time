import 'package:flutter/material.dart';
import 'package:pizza_time/pages/pizza_market.dart';
import 'package:pizza_time/pages/add_pizza.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => PizzaMarket(),
    '/add': (context) => AddPizza(),
  },
));