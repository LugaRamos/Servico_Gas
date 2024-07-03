import 'package:flutter/material.dart';
import 'tela_pedido.dart'; // Importa a próxima tela para navegação

class TelaSelecaoServico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Selecionar Serviço')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Selecione o serviço desejado:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaPedido(tipoServico: 'Gás')),
                  );
                },
                child: Text('Pedir Gás'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Navegação para outro tipo de serviço
                },
                child: Text('Outro Serviço'),
              ),
              // Você pode adicionar mais opções de serviços conforme necessário
            ],
          ),
        ),
      ),
    );
  }
}
