import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/casag.page.dart';
import 'package:servicos_oab/pages/casag/casag_appbar.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';
import 'package:servicos_oab/pages/home/home.page.dart';
import 'package:servicos_oab/pages/oab/oab.page.dart';
import 'package:servicos_oab/pages/esa/esa.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgendamentoComSucessoPage extends StatelessWidget {
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
            titlePage(),
            subTitlePage(),
            centerText(),
            footerText(),
            footerButtons(context),
            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                getFooter()
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: getButtonsNavigationBar()
    );
  }

  Widget titlePage() {
    return Column(
      children: [
        Text(
          'AGENDAMENTO - ESMALTERIA',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

Widget subTitlePage() {
  return Column(
    children: [
      Text(
        'Agendamento realizado com sucesso!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget centerText() {
  return Column(
    children: [
      Text(
        'Fique atento ao seu celular, será encaminhado SMS 2 horas antes para relembrar!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget footerText() {
  return Column(
    children: [
      Text(
        'CASAG agradece a preferência!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget footerButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) return Colors.blue;
            if (states.contains(MaterialState.hovered)) return Colors.blue;
            if (states.contains(MaterialState.pressed)) return Colors.blue;
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
        child: Text('Novo agendamento'),
      ),
      TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) return Colors.blue;
            if (states.contains(MaterialState.hovered)) return Colors.blue;
            if (states.contains(MaterialState.pressed)) return Colors.blue;
            return null; // Defer to the widget's default.
          }),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Text('Home'),
      )
    ],
  );
}
