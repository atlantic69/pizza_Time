import 'package:flutter/material.dart';
import 'package:pizza_time/pages/pizza_market.dart';
import 'package:pizza_time/pages/add_pizza.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      iconTheme: IconThemeData(
        color: Colors.pinkAccent,
      )
    ),
    cardTheme: const CardTheme(
      elevation: 30,
      shadowColor: Color.fromARGB(50, 70, 70, 250),
      margin: EdgeInsets.all(15),
    ),
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => PizzaMarket(userPizzaName: '', userPizzaPrice: ''),
    '/add': (context) => AddPizza(),
  },
));