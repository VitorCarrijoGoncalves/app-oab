import 'package:flutter/material.dart';

AppBar getOabAppBar() {
  return AppBar(
    backgroundColor: Colors.blue,
    title: Center(
      child: SizedBox(
        width: 100,
        child: Image.asset("assets/LOGO_OAB.png"),
      ),
    ),
    actions: <Widget>[
      Container(
        width: 60,
      ),
    ],
  );
}
