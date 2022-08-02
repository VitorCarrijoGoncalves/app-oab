import 'package:flutter/material.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamentos_realizados.page.dart';
import 'package:servicos_oab/pages/home/home.page.dart';
import 'package:servicos_oab/pages/login.page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Drawer getDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("${getUsername()}"),
          accountEmail: Text("${getEmail()}"),
          currentAccountPicture: CircleAvatar(
            radius: 30.0,
/*                 backgroundImage: NetworkImage(
                    'assets/profile-picture.png'), */
            backgroundColor: Colors.transparent,
          ),
        ),
        ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            //subtitle: Text("meus favoritos..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              //debugPrint('toquei no drawer');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }),
        ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text("Meus Agendamentos"),
            //subtitle: Text("Perfil do usuário..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () async {
              bool saiu = await sair();
              if (saiu) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgendamentosRealizadosPage(),
                  ),
                );
              }
              //Navigator.pop(context);
            }),
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Log out"),
            //subtitle: Text("Perfil do usuário..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () async {
              bool saiu = await sair();
              if (saiu) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              }
              //Navigator.pop(context);
            }),
      ],
    ),
  );
}

Future<bool> sair() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await sharedPreferences.clear();
  return true;
}

Future<String> getUsername() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String username = sharedPreferences.getString("username").toString();
  return username;
}

Future<String> getEmail() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String email = sharedPreferences.getString("email").toString();
  return email;
}

String convertFutureToString(Future<String> variable) {
  variable.then((value) {
    return value;
  });

  return "";
}

/*     String token = await getToken(userModel).then((value) {
    return value;
  }); */

/*    appInfoApi.getLogoClient().then((String result){
setState(() {
      urlImageApi = result;
    });
}); */
