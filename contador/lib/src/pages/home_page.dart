import 'package:flutter/material.dart';

class HomePage  extends StatelessWidget{

  final estiloTexto =  new TextStyle( fontSize: 25);
  final conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:', style: estiloTexto ),
              Text('$conteo', style: estiloTexto),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),  // iconos https://material.io/resources/icons/?style=baseline
          onPressed: () {
              print('hola mundo');
              // conteo = conteo + 1;
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}