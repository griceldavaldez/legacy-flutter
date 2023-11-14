import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'), 
            _SingleCard(icon: Icons.car_rental, color: Colors.pinkAccent, text: 'Transport')
          ]
        ),

        TableRow(
          children: [
            _SingleCard(icon: Icons.shop, color: Colors.cyan, text: 'Shopping'), 
            _SingleCard(icon: Icons.cloud, color: Colors.purpleAccent, text: 'Bill')
          ]
        ),

        TableRow(
          children: [
            _SingleCard(icon: Icons.movie, color: Colors.deepPurple, text: 'Entertainment'), 
            _SingleCard(icon: Icons.food_bank_outlined, color: Colors.deepOrange, text: 'Grocery')
          ]
        ),

        TableRow(
          children: [
            _SingleCard(icon: Icons.account_box_outlined, color: Colors.green, text: 'Account'), 
            _SingleCard(icon: Icons.settings, color: Colors.blueGrey, text: 'Settings')
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({required this.icon, required this.color, required this.text});

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20));
  }

  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxDecoration = getBoxDecoration();

    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon, size: 35, color: Colors.white,),
                ),
                const SizedBox(height: 10),
                Text(text, style: TextStyle(color: color, fontSize: 18))
            ]),
          ),
        ),
      ),
    );
  }
}
