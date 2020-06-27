import 'package:coocktimer/app/auth/auth_controller.dart';
import 'package:coocktimer/app/auth/widgets/button_widget.dart';
import 'package:coocktimer/app/auth/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key key, this.title = "Auth"}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthController> {
  //use 'controller' variable to access controller

  var txtCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                // child: Image.asset("lib/assets/logo/coocktimer.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Input(
                label: "Login",
                ctrl: txtCtrl,
              ),
              SizedBox(
                height: 10,
              ),
              Input(
                label: "Senha",
                ctrl: txtCtrl,
              ),
              SizedBox(
                height: 40,
              ),
              Button(
                label: "Criar Conta",
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                label: "Entrar",
              ),
              SizedBox(
                height: 10,
              ),
              // Container(
              //   height: 40,
              //   child: FlatButton(
              //     child: Text(
              //       "Cadastre-se",
              //       textAlign: TextAlign.center,
              //     ),
              //     onPressed: () {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //     builder: (context) => SignupPage(),
              //       //   ),
              //       // );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
