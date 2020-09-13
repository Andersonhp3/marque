import 'package:flutter/material.dart';
import 'package:marque/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marque',
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
