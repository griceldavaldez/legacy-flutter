import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader_app/pages/pages.dart';
import 'package:qr_reader_app/providers/providers.dart';

 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider() ),
        ChangeNotifierProvider(create: (_) => ScanListProvider() ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => const HomePage(),
          'mapa': ( _ ) => const MapaPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurple
          )
        ),
      ),
    );

  }
}