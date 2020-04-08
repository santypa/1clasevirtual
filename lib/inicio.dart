import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  final titulo= TextStyle(fontWeight: FontWeight.bold );
  final subtitulo= TextStyle(color: Colors.grey );
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:AppBar(title: Text('material app Bar')),
       body: SingleChildScrollView (//hacer que la pantalla pueda deslizar
                child: Container(
           child: Column(
              children: <Widget>[

                Image.network("https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),             
                _seccion1(),
                _acciones(),
                _creartexto(),


              ],

           ),
         ),
       ),
      );


  }

Widget _seccion1(){
return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical:30.0),
                child: Row(
                children: <Widget>[

                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Text("UN LAGO",style: titulo),
                        SizedBox(height: 5.0,),
                        Text("una persona en un lago",style: subtitulo,),

                    ],
                    
                  ),),
                  Icon(Icons.star,color: Colors.red),
                  Text("45"),

                ],

              ),
              );

}

Widget _acciones(){

  return Container(
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.center,//alinea las cosas
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: <Widget>[
        
         _crearAccion(Icons.call,'CALL'),
          _crearAccion(Icons.near_me,'ROUTE'),
           _crearAccion(Icons.share,'SHART'),


      ],

    ) ,
  );
}

Widget _crearAccion(IconData icono,String texto){
return Column(
          children: <Widget>[
              Icon(icono,color: Colors.blue,),
              Text(texto,style: TextStyle(color: Colors.blue),),
          ],
        );


}

Widget _creartexto(){
  return Container(

padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
  child: Text("hola mundo"),
    
     


  );
}





}