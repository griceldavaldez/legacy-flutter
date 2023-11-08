import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // variable/propiedad

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            print('counter: $counter');
          }),
    );
  }
}
