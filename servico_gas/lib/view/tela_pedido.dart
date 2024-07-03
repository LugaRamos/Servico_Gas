import 'package:flutter/material.dart';
import 'tela_cadastro_endereco.dart'; // Importa a próxima tela para navegação

class TelaPedido extends StatefulWidget {
  final String tipoServico;

  TelaPedido({required this.tipoServico});

  @override
  _TelaPedidoState createState() => _TelaPedidoState();
}

class _TelaPedidoState extends State<TelaPedido> {
  int quantidade = 1; // Quantidade inicial

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fazer Pedido de ${widget.tipoServico}')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Especifique seu pedido:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text('Quantidade:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (quantidade > 1) {
                        quantidade--;
                      }
                    });
                  },
                ),
                Text('$quantidade'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantidade++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text('Tipo de ${widget.tipoServico}:'),
            // Exemplo de dropdown para seleção do tipo de gás
            DropdownButton<String>(
              value: 'Gás de Cozinha',
              onChanged: (String? newValue) {
                // Lógica para atualizar o tipo de gás selecionado
              },
              items: <String>['Gás de Cozinha', 'Gás Industrial', 'Outro']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCadastroEndereco()),
                );
              },
              child: Text('Avançar para Endereço'),
            ),
          ],
        ),
      ),
    );
  }
}
