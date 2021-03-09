import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(NosBankApp());
}

class NosBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NosBank',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TransferForm(),
    );
  }
}

class TransferForm extends StatelessWidget {
  final TextEditingController _agency = TextEditingController();
  final TextEditingController _account = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('NosBank')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Text('Olá, qual a agencia e conta?'),
            TextInput(_agency, 'Número da agencia'),
            TextInput(_account, 'Número da conta'),
            RaisedButton(
              color: Colors.purple,
              textColor: Colors.white,
              child: Text('Próximo'),
              onPressed: _onCreateTransfer,
            )
          ]),
        ));
  }

  void _onCreateTransfer() {
    debugPrint(_agency.text);
    debugPrint(_account.text);
  }
}

class TextInput extends StatelessWidget {
  final TextEditingController _controller;
  final String _label;

  TextInput(this._controller, this._label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(labelText: _label, hintText: '010110'),
        keyboardType: TextInputType.number,
      ),
    );
  }
}