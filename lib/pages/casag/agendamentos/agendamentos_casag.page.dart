import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/casag_appbar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamento_casag.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';

class AgendamentosCasagPage extends StatelessWidget {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.scissors),
                      iconSize: 42,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.hand),
                      iconSize: 42,
                      color: Colors.pink,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Barbearia",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    Text("Esmalteria",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.pink,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.heartCircleCheck),
                      iconSize: 42,
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.computer),
                      iconSize: 42,
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Planos de Saúde",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400)),
                    Text("Certificação Digital",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.green,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.book),
                      iconSize: 42,
                      color: Colors.purple,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.tooth),
                      iconSize: 42,
                      color: Colors.amber,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Livraria",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.purple,
                            fontWeight: FontWeight.w400)),
                    Text("Odontológico",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.amber,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.coffee),
                      iconSize: 42,
                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.ticket),
                      iconSize: 42,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cafeteria",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.brown,
                            fontWeight: FontWeight.w400)),
                    Text("Ingressos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.shoePrints),
                      iconSize: 42,
                      color: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.glasses),
                      iconSize: 42,
                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentoCasagPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Engraxataria",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400)),
                    Text("Ótica",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.orange,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [getFooter()],
                )
              ]),
        ),
        bottomNavigationBar: getButtonsNavigationBar());
  }
}
