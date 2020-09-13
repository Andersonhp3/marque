import 'package:flutter/material.dart';
import 'package:marque/screens/login_screen.dart';

void main() => runApp(MyApp());

//
//
// Login para teste com o firebase
// LOGIN admin@admin.com
// SENHA 123456
//
//

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
