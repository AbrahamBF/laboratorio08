import 'package:flutter/material.dart';
import 'routes.dart';

class PantallaUno extends StatefulWidget {
  @override
  _PantallaUnoState createState() => _PantallaUnoState();
}

class _PantallaUnoState extends State<PantallaUno> {
  TextEditingController _textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TECSUP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textoController,
              decoration: InputDecoration(labelText: 'Ingrese su código de Alumno'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  rutaPantallaDos,
                  arguments: _textoController.text,
                );
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}