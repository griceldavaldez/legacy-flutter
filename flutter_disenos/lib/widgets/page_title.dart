import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );
  }
}