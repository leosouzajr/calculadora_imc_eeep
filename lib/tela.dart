import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class Tela extends StatefulWidget {
  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String info = "Informe seus dados";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calculadora IMC",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.rotate_left),
            onPressed: () {
              resetarCampos();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
                controller: pesoController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso(kg)",
                    labelStyle: TextStyle(color: Colors.green, fontSize: 23)),
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              TextField(
                controller: alturaController,
                style: TextStyle(color: Colors.green, fontSize: 20),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura(m)",
                    labelStyle: TextStyle(color: Colors.green, fontSize: 23)),
              ),
              RaisedButton(
                child: Text("Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 26)),
                color: Colors.green,
                onPressed: () {
                  calcularImc();
                },
              ),
              Text(
                info,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }

  void calcularImc() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text);
    double imc = peso / (altura * altura);

    setState(() {
      if (imc < 18.6) {
        info = "imc:${imc.toStringAsPrecision(4)} (ABAIXO DO PESO)";
      } else if (imc >= 18.6 && imc <= 24.9) {
        info = "imc:${imc.toStringAsPrecision(4)} (PESO IDEAL)";
      }else if (imc > 24.9 && imc <= 29.9) {
        info = "imc:${imc.toStringAsPrecision(4)} (LEVEMENTE ACIMAD DO PESO)";
      }else if (imc > 29.9 && imc <= 34.9) {
        info = "imc:${imc.toStringAsPrecision(4)} (OBESIDADE GRAU I)";
      }else if (imc > 34.9 && imc <= 39.9) {
        info = "imc:${imc.toStringAsPrecision(4)} (OBESIDADE GRAU II)";
      }else if (imc > 39.9) {
        info = "imc:${imc.toStringAsPrecision(4)} (OBESIDADE GRAU III)";
      }

    });
  }

  void resetarCampos() {
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      info = "Informe seus dados";
    });
  }
}
