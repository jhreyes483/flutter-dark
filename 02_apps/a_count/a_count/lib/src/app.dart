


import 'package:a_count/src/pages/contador_page.dart';
//import 'package:a_count/src/pages/home-page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      )
      
      ,
    );
  }
}