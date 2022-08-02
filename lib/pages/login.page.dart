import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:servicos_oab/models/login_user_model.dart';
import 'package:servicos_oab/pages/reset-password.page.dart';
import 'package:servicos_oab/pages/home/home.page.dart';
import 'package:servicos_oab/pages/cadastro/cadastro_informacoes_pessoais.page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import 'package:servicos_oab/pages/drawer.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

/*   @override
  void initState() {
    super.initState();
    verificarToken().then((value) {
      if (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      }
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/LOGO_OAB.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              controller: _userNameController,
              key: _formKey,
              keyboardType: TextInputType.text,
              validator: (_userNameController) {
                if (_userNameController == null || _userNameController.isEmpty) {
                  return 'Por favor, informe seu usuário';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Usuário",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              controller: _passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              validator: (_passwordController) {
                if (_passwordController == null ||
                    _passwordController.isEmpty) {
                  return 'Por favor, informe seu usuário';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Acessar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () async {
                      //FocusScopeNode currentFocus = FocusScope.of(context);
                      //if (_formKey.currentState!.validate()) {
                      bool deuCerto = await login(
                          getUsuario(_userNameController, _passwordController));
/*                       String username = await login(
                          getUsuario(_userNameController, _passwordController)); */
                      /*  if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      } */
                      if (deuCerto) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      } else {
                        _passwordController.clear();
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                    //},
                    ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Quero me Cadastrar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CadastroInformacoesPessoaisPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final snackBar = SnackBar(
  content: Text('Usuário ou senha inválido', textAlign: TextAlign.center),
  backgroundColor: Colors.redAccent,
);

LoginUserModel getUsuario(
    TextEditingController usernameText, TextEditingController passwordText) {
  LoginUserModel userModel =
      new LoginUserModel(userName: usernameText.text, password: passwordText.text);
  return userModel;
}

Future<bool> verificarToken() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  if (sharedPreferences.getString("token") == null) {
    return false;
  } else {
    return true;
  }
}

Future<String> getToken(LoginUserModel userModel) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var url = Uri.parse('https://appws.oabgo.org.br/wsoab-homolog/authenticate');

  Map<String, String> headers = {'Content-Type': 'application/json'};
  final body = jsonEncode(
      {"username": "${userModel.userName}", "password": "${userModel.password}"});

  var res = await http.post(
    url,
    headers: headers,
    body: body,
  );

  var code = jsonDecode(res.body)['code'];

  if (code == null) {
    //if (res.statusCode == 200) {
    sharedPreferences.setString(
        'token', "Bearer " + "${(jsonDecode(res.body)['token'])}");
    var token = jsonDecode(res.body)['token'];
    return token;
  }
  print(jsonDecode(res.body));
  return 'Usuário não autenticado';
}

Future<bool> login(LoginUserModel userModel) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var url = Uri.parse(
      'https://appws.oabgo.org.br/wsoab-homolog/usuario/login/${userModel.userName}/${userModel.password}');

  String token = await getToken(userModel).then((value) {
    return value;
  });

  if (token == 'Usuário não autenticado') {
    return false;
  }

  Map<String, String> headers = {
    'Authorization': 'Bearer ' + '${token}',
    'Content-Type': 'application/json',
    'Accept': 'application/xml'
  };

  var response = await http.get(url, headers: headers);

  if (response.statusCode == 200) {
    XmlDocument xmlDocument = XmlDocument.parse(response.body);

    String xmlUserName = xmlDocument.findAllElements("nome").toString();
    String username =
        xmlUserName.substring(7, xmlUserName.toString().length - 8);

    String xmlEmail = xmlDocument.findAllElements("email").toString();
    String email =
        xmlEmail.substring(7, xmlEmail.toString().length - 8);

    sharedPreferences.setString('username', username);
    sharedPreferences.setString("email", email);

    return true;
  }
  print(jsonDecode(response.body));
  return false;
}