import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/casag_appbar.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';

class AuxiliosCasagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: getCasagAppBar(),
      body: Container(
        color: Color(0xFF3C5A99),
        child: ListView(children: <Widget>[
          Card(
            // Maternidade
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/ICONE_MATERNIDADE.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Maternidade"),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.hovered))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF3C5A99);
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuxiliosCasagPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          Card(
            // Funeral
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/ICONE_CAIXAO.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Funeral"),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.hovered))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF3C5A99);
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuxiliosCasagPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          Card(
            // Emergencial
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/ICONE_VIRUS.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Emergencial"),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.hovered))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF3C5A99);
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuxiliosCasagPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          Card(
            // Extraordinário
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/ICONE_DINHEIRO.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Extraordinário"),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.hovered))
                        return Color(0xFF3C5A99);
                      if (states.contains(MaterialState.pressed))
                        return Color(0xFF3C5A99);
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuxiliosCasagPage(),
                      ),
                    );
                  },
                  child: Text('Acessar'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: <Widget>[getFooter()],
          ),
        ]),
      ),
      bottomNavigationBar: getButtonsNavigationBar()
    );
  }
}
