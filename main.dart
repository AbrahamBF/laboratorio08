// main.dart
import 'package:flutter/material.dart';
import 'routes.dart';
import 'pantalla1.dart';
import 'pantalla2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab08-Balboa',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: rutaPantallaUno,
      routes: {
        rutaPantallaUno: (context) => PantallaUno(),
        rutaPantallaDos: (context) => PantallaDos(),
      },
    );
  }
}