import 'package:flutter/material.dart';
import 'package:pizza_time/elements/bgImageAppBar.dart';
import 'package:pizza_time/pages/pizza_market.dart';

class AddPizza extends StatefulWidget {
  const AddPizza({Key? key}) : super(key: key);

  @override
  State<AddPizza> createState() => _AddPizzaState();
}

class _AddPizzaState extends State<AddPizza> {

  //Высота AppBar
  double heightAppBar = 100.0;

  //Переменные для текстовых полей
  late String userPizzaName, userPizzaPrice;

  //Контроллеры для очистики текстовых полей
  TextEditingController controllerNameTF = TextEditingController();
  TextEditingController controllerPriceTF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBar(
          toolbarHeight: heightAppBar,
          flexibleSpace: BgImageAB(),
          title: const Text('Add pizza'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              );
            },
          ),
        ),
      ),

      body: Stack(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    height: 200,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                SizedBox(
                                  height: 90,
                                  width: 90,
                                  child: Image(
                                    image: AssetImage('assets/pizza.jpeg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, right: 60, bottom: 20),
                                  child: SizedBox(
                                    height: 34,
                                    child: TextField(
                                      onChanged: (String value) {
                                        userPizzaName = value;
                                      },
                                      controller: controllerNameTF,
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.clear),
                                          iconSize: 20,
                                          onPressed: () {
                                            controllerNameTF.clear();
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text('Price',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, right: 60),
                                  child: SizedBox(
                                    height: 34,
                                    child: TextField(
                                      onChanged: (String value) {
                                        userPizzaPrice = value;
                                      },
                                      controller: controllerPriceTF,
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.clear),
                                          iconSize: 20,
                                          onPressed: () {
                                            controllerPriceTF.clear();
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                child: const Text('Save',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PizzaMarket(
                          userPizzaName: userPizzaName,
                          userPizzaPrice: userPizzaPrice,
                        ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
