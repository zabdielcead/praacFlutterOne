import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
   createState() {
    
    return _ContadorPageState();
  }


}

class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto =  new TextStyle( fontSize: 25);
  int _conteo = 0;


  @override
  Widget build(BuildContext context) {    // build dibuja el widget
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:', style: _estiloTexto ),
              Text('$_conteo', style: _estiloTexto),
            ],
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones(),
    );
  }


  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded( child: SizedBox() ),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer), // _sustraer solo pasamos la referencias
        SizedBox( width: 5.0 ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar), // agregar() sin parentesis para que cuando cargue no llame la funcion al inicio de la app

      ],
    );

     /*
     return FloatingActionButton( 
            child: Icon(Icons.add_alarm), 
            onPressed: null );

     */       
  }


  void _agregar(){
    setState(() {
        _conteo++;      
    });
  }
  void _sustraer() {
     setState(() {
        _conteo--;      
    });
  }

  void _reset() {
       setState(() {
         _conteo = 0;
       });
  }



}