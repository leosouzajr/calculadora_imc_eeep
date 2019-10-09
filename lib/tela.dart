import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class Tela extends StatefulWidget {
  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calculadora IMC",
            style: TextStyle(
                   color: Colors.white,
                  fontSize: 25
                ),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[Icon(Icons.rotate_left)],
      ),
      body: Container( 
      
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 120,
              color: Colors.green,
            ),
            TextField(
              
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso(kg)",
                labelStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 23
                )
              ),
              style: TextStyle(
                color: Colors.green,
                fontSize: 20
              ),
            ),
           TextField(
             style: TextStyle(
                color: Colors.green,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura(m)",
                labelStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 23
                )
              ),
            ),
            RaisedButton(
              child: Text("Calcular",
                  style:TextStyle(
                      color: Colors.white,
                      fontSize: 26
                  )
                  
              ),
              color: Colors.green,
              onPressed: () {
                 
              },
             
            ),
            Text("Informe seus dados",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.green

                 ),

            )
          ],
        ),
      ),
    );
  }
}
