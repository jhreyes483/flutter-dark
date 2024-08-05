import 'package:b_componentes/src/pages/home.dart';
//import 'package:b_componentes/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
     home: HomePage(),
    );
  }
}