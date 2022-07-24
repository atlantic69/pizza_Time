import 'package:flutter/material.dart';

class PizzaMarket extends StatefulWidget {

  String? userPizzaName, userPizzaPrice;

  PizzaMarket(
      {Key? key, required this.userPizzaName, required this.userPizzaPrice})
      : super(key: key);

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
    menu.addAll(['Aloha', 'Four season', 'Don Beacon', widget.userPizzaName]);
    price.addAll(['8', '10', '6', widget.userPizzaPrice]);
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
              fontSize: 22,
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
            shadowColor: const Color.fromARGB(40, 70, 70, 250),
            margin: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: 70,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: const Image (
                              image: AssetImage('assets/pizza.jpeg'),
                            ),
                            title: Text(menu[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            trailing: const Icon(
                              Icons.attach_money,
                              color: Colors.pinkAccent,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(price[index],
                            style: const TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}