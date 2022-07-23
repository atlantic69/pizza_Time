import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  double heightAppBar = 150.0;
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
                opacity: 0.1,
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

              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Image (
          image: AssetImage('assets/bghead.jpg'),
        ),

      ),
    );
  }
}