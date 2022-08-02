import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamentos_casag.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';
import 'package:servicos_oab/pages/oab/oab_appbar.dart';
import 'package:servicos_oab/pages/oab/prerrogativas/registrar_ocorrencia_prerrogativas.dart';

class PrerrogativasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        appBar: getOabAppBar(),
        body: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.fileUpload),
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
                    Text("JUNTADA DE DOCUMENTO/INTERLOCUTÓRIA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.file),
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
                    Text("SOLICITAÇÃO DE INTERVENÇÃO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.amber,
                            fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.fileCircleQuestion),
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
                    Text("SOLICITAÇÃO DE PROVIDÊNCIAS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.w400)),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.algolia),
                      iconSize: 22,
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrarOcorrenciaPrerrogativasPage(),
                          ),
                        );
                      },
                    ),
                    Text("ABERTURA DE OCORRÊNCIA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.redAccent,
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
