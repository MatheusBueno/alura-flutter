import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login/login.dart';

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
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepPurple, textTheme: ButtonTextTheme.primary),
      ),
      home: LoginScreen(),
    );
  }
}
