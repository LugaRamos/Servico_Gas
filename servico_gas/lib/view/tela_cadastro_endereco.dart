import 'package:flutter/material.dart';
import 'tela_revisao_pedido.dart'; // Importa a próxima tela para navegação

class TelaCadastroEndereco extends StatefulWidget {
  @override
  _TelaCadastroEnderecoState createState() => _TelaCadastroEnderecoState();
}

class _TelaCadastroEnderecoState extends State<TelaCadastroEndereco> {
  bool salvarEndereco = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrar Endereço')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Informe o endereço para entrega:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Endereço'),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Checkbox(
                  value: salvarEndereco,
                  onChanged: (bool? value) {
                    setState(() {
                      salvarEndereco = value!;
                    });
                  },
                ),
                Text('Salvar este endereço para futuros pedidos'),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaRevisaoPedido()),
                );
              },
              child: Text('Avançar para Revisão do Pedido'),
            ),
          ],
        ),
      ),
    );
  }
}
