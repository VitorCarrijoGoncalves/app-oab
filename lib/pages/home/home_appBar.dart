import 'package:flutter/material.dart';

AppBar getHomeAppBar() {
  return AppBar(
    //backgroundColor: Colors.blue,
    backgroundColor: Colors.blue,
    title: const Text("Serviços OAB",
        textAlign: TextAlign.right, style: TextStyle(color: Colors.white)),
    actions: <Widget>[
      Container(
        width: 60,
      ),
    ],
  );
}
