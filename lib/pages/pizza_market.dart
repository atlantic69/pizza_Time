import 'package:flutter/material.dart';
import 'package:pizza_time/elements/bgImageAppBar.dart';

class PizzaMarket extends StatefulWidget {

  String? userPizzaName, userPizzaPrice;

  PizzaMarket(
      {Key? key, required this.userPizzaName, required this.userPizzaPrice})
      : super(key: key);

  @override
  State<PizzaMarket> createState() => _PizzaMarket();
}

class _PizzaMarket extends State<PizzaMarket> {

  //Высота AppBar
  double heightAppBar = 150.0;
  //Списки с названием и ценой пиццы
  List menu = ['Aloha', 'Four season', 'Don Beacon'];
  List price = ['8', '10', '6'];

  @override
  void initState() {
    super.initState();
    if (widget.userPizzaName == '' || widget.userPizzaPrice == ''){
      menu;
      price;
    }
    else{
      menu.addAll([widget.userPizzaName]);
      price.addAll([widget.userPizzaPrice]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBar(
          toolbarHeight: heightAppBar,
          flexibleSpace: BgImageAB(),
          title: const Text('Pizza Market'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/add');
              },
              icon: const Icon(Icons.add_box),
              iconSize: 30,
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
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