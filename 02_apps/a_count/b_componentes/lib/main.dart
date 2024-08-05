//import 'package:b_componentes/src/pages/alert_page.dart';
//import 'package:b_componentes/src/pages/avatar_page.dart';
import 'package:b_componentes/src/pages/home.dart';
import 'package:b_componentes/src/routes/routes.dart';
//import 'package:b_componentes/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
//import 'src/pages/home_temp.dart';
//import 'package:b_componentes/src/pages/alert_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Componentes App',
        // home: HomePage(),

        initialRoute: 'home',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          /*
          return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage() 
          );
          */
        }
      );
  }
}
