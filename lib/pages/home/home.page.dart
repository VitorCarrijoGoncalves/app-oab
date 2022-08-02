import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/casag.page.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/home/home_appBar.dart';
import 'package:servicos_oab/pages/oab/oab.page.dart';
import 'package:servicos_oab/pages/esa/esa.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: getHomeAppBar(),
      body: Container(
        color: Color(0xFF3C5A99),
        child: ListView(children: <Widget>[
          Card(
            // Serviços da OAB
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/LOGO_OAB.jpg"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      "Aba destinada para acesso dos serviços online disponibilizados pela OAB/GO."),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.blue;
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue;
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OabPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          Card(
            // Serviços da CASAG
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/LOGO_CASAG.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      "Aba destinada para acesso dos serviços online disponibilizados pela CASAG/GO."),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.blue;
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue;
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CasagPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          Card(
            // Serviços da ESA
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/LOGO_ESA.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      "Aba destinada para acesso dos serviços online disponibilizados pela ESA/GO."),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.blue;
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue;
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EsaPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          Card(
            // Serviços do CEL
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/LOGO_CEL_OAB.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      "Aba destinada para acesso dos serviços online disponibilizados pelo CEL da OAB/GO."),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.blue;
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue;
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EsaPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: getButtonsNavigationBar()
    );
  }
}


