import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamentos_casag.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';
import 'package:servicos_oab/pages/oab/oab_appbar.dart';
import 'package:servicos_oab/pages/oab/prerrogativas/prerrogativas.page.dart';

class OabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        appBar: getOabAppBar(),
        body: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.pencil),
                      iconSize: 22,
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
                    Text("Assunto sobre Processo de Inscrição",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400)),
/*                     SizedBox(
                      height: 20,
                    ), */
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.fileContract),
                      iconSize: 22,
                      color: Colors.amber,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentosCasagPage(),
                          ),
                        );
                      },
                    ),
                    Text("Assunto sobre Processo de Sociedade de advogados",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.amber,
                            fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.scaleBalanced),
                      iconSize: 22,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentosCasagPage(),
                          ),
                        );
                      },
                    ),
                    Text(
                        "Assunto sobre Processo e Código de Ética e Disciplina",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.w400)),
/*                     SizedBox(
                      height: 20,
                    ), */
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.fileSignature),
                      iconSize: 22,
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
                    Text(
                        "Assunto sobre Processos específicos do Conselho Seccional",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.w400)),
/*                     SizedBox(
                      height: 20,
                    ), */
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.personCircleCheck),
                      iconSize: 22,
                      color: Colors.purple,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgendamentosCasagPage(),
                          ),
                        );
                      },
                    ),
                    Text("Assunto sobre Processo de Comissão",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple,
                            fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.personCircleQuestion),
                      iconSize: 22,
                      color: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrerrogativasPage(),
                          ),
                        );
                      },
                    ),
                    Text("Assunto sobre Processo de Prerrogativas",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.vrCardboard),
                      iconSize: 22,
                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrerrogativasPage()
                          ),
                        );
                      },
                    ),
                    Text("2ª via de cartão e carteira",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.brown,
                            fontWeight: FontWeight.w400)),
/*                     SizedBox(
                      height: 20,
                    ), */
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
