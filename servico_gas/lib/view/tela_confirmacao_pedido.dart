import 'package:flutter/material.dart';

class TelaConfirmacaoPedido extends StatelessWidget {
  final List<Map<String, dynamic>> itensPedido;
  final double totalPedido;

  TelaConfirmacaoPedido({required this.itensPedido, required this.totalPedido});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Confirmar Pedido')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Confirme seu pedido:',
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
            Text('Selecione a forma de pagamento:'),
            // Exemplo de botões para seleção de forma de pagamento
            ListTile(
              title: Text('Cartão de Crédito'),
              leading: Radio(
                value: 'Cartão de Crédito',
                groupValue: '',
                onChanged: (String? value) {
                  // Lógica para selecionar forma de pagamento
                },
              ),
            ),
            ListTile(
              title: Text('Dinheiro'),
              leading: Radio(
                value: 'Dinheiro',
                groupValue: '',
                onChanged: (String? value) {
                  // Lógica para selecionar forma de pagamento
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para confirmar o pedido e efetuar o pagamento
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Pedido Confirmado'),
                      content: Text('Seu pedido foi confirmado com sucesso!'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Fechar'),
                          onPressed: () {
                            Navigator.of(context).popUntil((route) => route.isFirst);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Confirmar Pedido'),
            ),
          ],
        ),
      ),
    );
  }
}
