import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_page.dart';
//import 'package:contador/src/pages/home_page.dart';
class MyApp extends   StatelessWidget{
  // builk dibuja el widget

  @override
  Widget build(BuildContext context) { // context contiene la informacion del arbol de widgets, información del tema
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Center(
        //child:  HomePage(),
        child:  ContadorPage(),
      )

    );// material App 
  }
}
