import 'package:flutter/material.dart';

class CustomButtomNav extends StatefulWidget {
  const CustomButtomNav({super.key});

  @override
  State<CustomButtomNav> createState() => _CustomButtomNavState();
}

class _CustomButtomNavState extends State<CustomButtomNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: false,
      onTap: (value) {
        currentIndex = value;
        setState(() {});
      },
      selectedIconTheme: const IconThemeData(color: Colors.pink, size: 35),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Gráfico'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Usuario'),
      ],
    );
  }
}
