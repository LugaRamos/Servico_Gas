import 'package:flutter/material.dart';
import 'tela_confirmacao_pedido.dart'; // Importa a próxima tela para navegação

class TelaRevisaoPedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Exemplo de dados fictícios do pedido
    List<Map<String, dynamic>> itensPedido = [
      {'produto': 'Gás de Cozinha', 'quantidade': 1, 'precoUnitario': 80.00},
    ];

    double totalPedido = itensPedido.fold(0, (total, item) => total + (item['quantidade'] * item['precoUnitario']));

    return Scaffold(
      appBar: AppBar(title: Text('Revisar Pedido')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Revisão do seu pedido:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: itensPedido.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      title: Text('${itensPedido[index]['produto']}'),
                      subtitle: Text('Quantidade: ${itensPedido[index]['quantidade']}'),
                      trailing: Text('R\$ ${itensPedido[index]['quantidade'] * itensPedido[index]['precoUnitario']}'),
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Total:'),
                Text('R\$ $totalPedido', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaConfirmacaoPedido(itensPedido: itensPedido, totalPedido: totalPedido)),
                );
              },
              child: Text('Avançar para Confirmação do Pedido'),
            ),
          ],
        ),
      ),
    );
  }
}
