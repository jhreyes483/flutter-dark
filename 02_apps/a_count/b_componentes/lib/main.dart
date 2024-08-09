
import 'package:b_componentes/src/pages/alert_page.dart';
import 'package:b_componentes/src/pages/home.dart';
import 'package:b_componentes/src/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Componentes App',
        // home: HomePage(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,                  
          GlobalCupertinoLocalizations.delegate,
        ],  
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('es', 'ES'),
        ],


        
        initialRoute:  '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          
          return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage() 
          );
          
        }
      );
  }
}
