import 'package:flutter/material.dart';
import 'view/tela_selecao_servico.dart'; // Importa a primeira tela do fluxo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ultragas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaSelecaoServico(), // Define a primeira tela do aplicativo
    );
  }
}
