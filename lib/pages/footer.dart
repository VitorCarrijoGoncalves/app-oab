import 'package:flutter/material.dart';

Column getFooter() {
  return Column(
    children: <Widget>[
      SizedBox(
        width: 32,
        height: 32,
        child: Image.asset("assets/LOGO_OAB.jpg"),
      ),
      Text(
        "Impulsionando a ADVOCACIA",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3C5A99)),
      ),
      Text(
        "Defendendo a Cidadania",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3C5A99)),
      ),
      Text(
        "Desenvolvido pelo departamento de Tecnologia da Informação da OAB/GO",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            height: 2,
            color: Colors.black),
      )
    ],
  );
}
