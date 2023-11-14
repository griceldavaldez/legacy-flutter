import 'package:flutter/material.dart';
import 'package:flutter_disenos/models.dart/menu_option.dart';
import 'package:flutter_disenos/screens/screens.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final menuOptions = <MenuOption>[
    MenuOption(route: 'basic_screen', name: 'Basic Design', screen: const BasicDesignScreen(), icon: Icons.image ),
    MenuOption(route: 'scroll_screen', name: 'Scroll Design', screen: const ScrollDesignScreen(), icon: Icons.image ),
    MenuOption(route: 'home_screen', name: 'Blur Design', screen: const HomeScreen(), icon: Icons.image )
  ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diseños en flutter'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int i) =>
        ListTile(
          leading: Icon(menuOptions[i].icon, color: Colors.indigo),
          title: Text(menuOptions[i].name),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        itemCount: menuOptions.length,
        separatorBuilder: (BuildContext context, int index) => const Divider()
      ),
    );
  }
}
