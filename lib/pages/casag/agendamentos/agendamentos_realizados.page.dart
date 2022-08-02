import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamentos_casag.page.dart';
import 'package:servicos_oab/pages/casag/casag_appbar.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgendamentosRealizadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        appBar: getCasagAppBar(),
        body: Container(
          color: Color(0xFF3C5A99),
          child: ListView(children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 128,
                    height: 128,
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.scissors),
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
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Barbearia agendada para o dia 15/06 as 15:00 horas"),
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
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('ATENÇÃO!'),
                        content: const Text('Tem certeza que deseja cancelar o seu pedido?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Não'),
                            child: const Text('Não'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Sim'),
                            child: const Text('Sim'),
                          ),
                        ],
                      ),
                    ),
                    child: Text('Cancelar Agendamento'),
                  )
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: getButtonsNavigationBar());
  }
}


/* onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                //title: const Text('ATENÇÃO!'),
                                content: const Text(
                                    'Pedido cancelado com sucesso!'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ), */