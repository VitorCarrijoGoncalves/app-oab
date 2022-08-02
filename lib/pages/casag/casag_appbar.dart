import 'package:flutter/material.dart';

AppBar getCasagAppBar() {
  return AppBar(
    backgroundColor: Colors.blue,
    title: Center(
      child: SizedBox(
        width: 100,
        child: Image.asset("assets/LOGO_CASAG.png"),
      ),
    ),
    actions: <Widget>[
      Container(
        width: 60,
      ),
    ],
  );
}
