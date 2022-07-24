import 'package:flutter/material.dart';

class AddPizza extends StatefulWidget {
  const AddPizza({Key? key}) : super(key: key);

  @override
  State<AddPizza> createState() => _AddPizzaState();
}

class _AddPizzaState extends State<AddPizza> {
  double heightAppBar = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBar(
          toolbarHeight: heightAppBar,
          backgroundColor: Colors.white,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bghead.jpg'),
                fit: BoxFit.fitWidth,
                opacity: 0.05,
              ),
            ),
          ),

          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                color: Colors.pinkAccent,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              );
            },
          ),

          title: const SizedBox (
            child: Text('Add pizza', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),),
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
                  elevation: 30,
                  shadowColor: const Color.fromARGB(50, 70, 70, 250),
                  margin: const EdgeInsets.all(15),
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
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.clear),
                                          iconSize: 20,
                                          onPressed: () {

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
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.clear),
                                          iconSize: 20,
                                          onPressed: () {

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
        ],
      ),
    );
  }
}
