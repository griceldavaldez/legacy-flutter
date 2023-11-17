import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader_app/pages/pages.dart';
import 'package:qr_reader_app/providers/providers.dart';
import 'package:qr_reader_app/widgets/widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
            icon: const Icon( Icons.delete_forever ), 
            onPressed: (){

              Provider.of<ScanListProvider>(context, listen: false)
                .borrarTodos();

            }
          )
        ],
      ),
      body: _HomePageBody(),

     bottomNavigationBar: const CustomNavigatorBar(),
     floatingActionButton: const ScanButton(),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   );
  }
}


class _HomePageBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);
    
    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    // Usar el ScanListProvider
    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    switch( currentIndex ) {

      case 0:
        scanListProvider.cargarScanPorTipo('geo');
        return const MapasPage();

      case 1: 
        scanListProvider.cargarScanPorTipo('http');
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
  }
}