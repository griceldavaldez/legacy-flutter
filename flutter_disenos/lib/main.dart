import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_disenos/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'menu_screen',
      //theme: ThemeData.dark(),
      routes: {
        'basic_screen': (context) => const BasicDesignScreen(),
        'scroll_screen': (context) => const ScrollDesignScreen(),
        'home_screen': (context) => const HomeScreen(),
        'menu_screen':(context) => const MenuScreen()
      },
    );
  }
}
