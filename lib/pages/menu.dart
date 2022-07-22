import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Pizza Market', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          IconButton(
            icon: const Icon (Icons.add_box),
            iconSize: 30,
            color: Colors.pinkAccent,
            onPressed: () {

            },
          ),],
      ),
      body: const Center(
        child: Text('Pizza Market: ', style: TextStyle(
          fontSize: 18,
          color: Colors.pinkAccent,
        ),),
      ),
    );
  }
}