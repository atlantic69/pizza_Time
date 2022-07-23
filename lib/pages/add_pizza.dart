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
                shadowColor: Color.fromARGB(40, 70, 70, 250),
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const SizedBox (
                  height: 200,
                  child: Center(
                    child: ListTile(
                      leading: Image(
                        image: AssetImage('assets/pizza.jpeg'),
                      ),
                      title: Text('Name', style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
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
                child: Text('Save', style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),

      /*
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 30,
                      shadowColor: Color.fromARGB(35, 70, 70, 250),
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: const SizedBox (
                        height: 200,
                        child: Center (
                          child: ListTile(
                            leading: Image (
                              image: AssetImage('assets/pizza.jpeg'),
                            ),
                            title: Text('Name', style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                  fixedSize: MaterialStateProperty.all(const Size(360, 60)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('Save'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      */
    );
  }
}
