import 'package:flutter/material.dart';
import 'package:flutter_disenos/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SingleChildScrollView(
            child: Column(
              children: [
               _HomeBody(),
                const CardTable()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomButtomNav(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitle()
        ]
      ),
    );
  }
}
