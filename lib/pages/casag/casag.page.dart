import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamentos_casag.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:servicos_oab/pages/casag/casag_appbar.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';

class CasagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        appBar: getCasagAppBar(),
        body: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.calendar),
                      iconSize: 122,
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentosCasagPage(),
                          ),
                        );
                      },
                    ),
                    Text("Agendamentos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.handshake),
                      iconSize: 122,
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentosCasagPage(),
                          ),
                        );
                      },
                    ),
                    Text("Auxílios",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: <Widget>[getFooter()],
                ),
              ]),
        ),
        bottomNavigationBar: getButtonsNavigationBar());
  }
}
