import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  DicePage_State createState() => DicePage_State();
}

class DicePage_State extends State<DicePage> {
  var botaoEsquerdo = 1;
  var botaoDireito = 1;

  void changeDiceFace() {
    setState(() {
      botaoEsquerdo = Random().nextInt(6) + 1;
      botaoDireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset("imagens/dice$botaoEsquerdo.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset("imagens/dice$botaoDireito.png"),
            ),
          ),
        ],
      ),
    );
  }
}
