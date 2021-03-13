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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Text('Olá, qual a agencia e conta?'),
            TextInput(
              controller: _agency,
              label: 'Número da agencia',
            ),
            TextInput(
              controller: _account,
              label: 'Número da conta',
            ),
            RaisedButton(
              color: Colors.purple,
              textColor: Colors.white,
              child: Text('Próximo'),
              onPressed: _onCreateTransfer,
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.queue_music),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MySecondScreen())),
      ),
    );
  }

  void _onCreateTransfer() {
    debugPrint(_agency.text);
    debugPrint(_account.text);
  }
}

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  TextInput({this.controller, this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label != null ? label : 'Placeholder',
          hintText: '010110',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class MySecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Text('Minha segunda pagina'),
    );
  }
}
