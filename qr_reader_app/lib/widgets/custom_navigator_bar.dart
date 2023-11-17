import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader_app/providers/providers.dart';


class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  
  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: ( int i ) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon( Icons.map ),
          label: 'Mapas'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.compass_calibration ),
          label: 'Direcciones'
        ),
      ],
    );
  }
}