import "package:flutter/material.dart";

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
        title: Text("Calculadora IMC"),
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[Icon(Icons.rotate_left)],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 120,
              color: Colors.blue,
            ),
            TextField(),
            TextField(),
            RaisedButton(
              child: Text("Calcular"),
              onPressed: (){

              }
            ),
            Text("Informe seus dados")
          ],
        ),
      ),
    );
  }
}
