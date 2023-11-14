import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/paisaje-2.avif')),
          const Title(),
          const ButtonSecction(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      )
    );
  }
}

class ButtonSecction extends StatelessWidget {

  const ButtonSecction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.near_me, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CustomButton({
    super.key, 
    required this.icon, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30,),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45))
          ]),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}
