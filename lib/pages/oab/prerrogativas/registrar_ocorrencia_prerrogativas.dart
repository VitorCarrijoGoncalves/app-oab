import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamento_com_sucesso.page.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';
import 'package:servicos_oab/pages/oab/oab_appbar.dart';

class RegistrarOcorrenciaPrerrogativasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        appBar: getOabAppBar(),
        body: Container(
          color: Colors.white,
          child: ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'CONSULTAR REQUERENTE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButton(
                  autofocus: true,
                  items: <String>[
                    "FULANO BELTRANO DA SILVA - OAB50421",
                    'CICLANO PEREIRA DA SILVA - OAB55487'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'DADOS DO REQUERENTE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text("Nome: FULANO BELTRANO DA SILVA"),
                  ],
                ),
                Row(
                  children: [Text("CPF: 123.456.789-00")],
                ),
                Row(
                  children: [
                    Text("Tipo de Inscrição: Originária"),
                  ],
                ),
                Row(
                  children: [
                    Text("OAB: 50421")
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                        builder: (context) => AgendamentoComSucessoPage(),
                      ),
                    );
                  },
                  child: Text('REGISTRAR OCORRÊNCIA'),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[getFooter()],
            ),
          ]),
        ),
        bottomNavigationBar: getButtonsNavigationBar());
  }
}
