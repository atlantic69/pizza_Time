import 'package:flutter/material.dart';

class PizzaMarket extends StatefulWidget {
  const PizzaMarket({Key? key}) : super(key: key);

  @override
  State<PizzaMarket> createState() => _PizzaMarket();
}

class _PizzaMarket extends State<PizzaMarket> {

  double heightAppBar = 150.0;
  List menu = [];
  List price = [];

  @override
  void initState() {
    super.initState();
    menu.addAll(['Aloha', 'Four season', 'Don Beacon']);
    price.addAll([8, 10, 6]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBar(
          toolbarHeight: heightAppBar,
          backgroundColor: Colors.white,
          elevation: 0,

          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bghead.jpg'),
                fit: BoxFit.fitWidth,
                opacity: 0.05,
              ),
            ),
          ),

          title: const SizedBox (
            child: Text('Pizza Market', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),

          actions: [
            IconButton(
              icon: const Icon (Icons.add_box),
              iconSize: 30,
              color: Colors.pinkAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/add');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 30,
            shadowColor: Color.fromARGB(40, 70, 70, 250),
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: SizedBox (
              height: 70,
              child: Center (
                child: ListTile(
                  leading: const Image (
                    image: AssetImage('assets/pizza.jpeg'),
                  ),
                  title: Text(menu[index], style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.attach_money,
                      color: Colors.pinkAccent,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}