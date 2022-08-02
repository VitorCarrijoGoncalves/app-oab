import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/casag/casag.page.dart';

class EsaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       drawer: Drawer(
        child: Column(children: [
          ListTile(
            title: Text("Início"),
            subtitle: Text("Tela de Início"),
          )
        ]),
      ), */
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "OAB/GO",
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white
          )
        ),
        leading: Container(
          height: 40,
          width: 40,
        ),
        actions: <Widget>[
          Container(
            width: 60,
          ),
        ],
      ),



      
      body: Container(
        color: Color(0xFF3C5A99),
        child: ListView(children: <Widget>[






/*       Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), */


/* 
   Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color(0xff0A6D92)),
          accountName: Text("Ricarth Lima"),
          accountEmail: Text("rrsl@cin.ufpe.br"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "RL",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red
          ),
          title: Text(
            "Configurações",
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_back_sharp,
            color: Colors.red
          ),
          title: Text(
            "Sair",
          ),
        )
      ],
    ),
  ), */



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
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ); */
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
                        builder: (context) => CasagPage(),
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
    );
  }
}
