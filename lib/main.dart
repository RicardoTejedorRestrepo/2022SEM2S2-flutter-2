import 'package:flutter/material.dart';
import 'package:noticias/pages/home.pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de IMC',
      theme: ThemeData.dark(
        //primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
