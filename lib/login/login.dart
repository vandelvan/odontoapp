import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/flutter_login.dart';
import 'dart:convert';

class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  List<User> users = [];
  User user = User("", "", "", false, false);
  Future<bool> readJson() async {
    final String response = await rootBundle.loadString('assets/users.json');
    final data = await json.decode(response);
    for (var i in data) {
      users.add(User.fromJson(i));
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readJson(),
        builder: (context, snapshot) {
          return FlutterLogin(
            title: "Odontología",
            logo: "assets/images/facodo-logo.png",
            messages: _configTextos(),
            onLogin: (LoginData data) {
              return Future.delayed(Duration(milliseconds: 500)).then((_) {
                for (var u in users) {
                  if (data.name == u.username && data.password == u.pass) {
                    Navigator.pushReplacementNamed(context, '/home',
                        arguments: u);
                    return null;
                  }
                }
                return "Datos Incorrectos";
              });
            },
            emailValidator: (value) {
              return null;
            },
            passwordValidator: (value) {
              return null;
            },
            onRecoverPassword: (String email) {
              return null;
            },
            onSignup: (LoginData data) {
              return null;
            },
          );
        });
  }

  LoginMessages _configTextos() {
    return LoginMessages(
      usernameHint: "Número de cuenta",
      passwordHint: "Contraseña",
      confirmPasswordHint: "Confirmar contraseña",
      loginButton: "Entrar",
      signupButton: "Registrarse",
      forgotPasswordButton: "Olvidé mi contraseña",
      recoverPasswordButton: "Recuperar contraseña",
      goBackButton: "Volver",
      confirmPasswordError: "No coincide",
      recoverPasswordDescription: "Se enviará a un correo su contraseña",
      recoverPasswordSuccess: "Su contraseña ha sido recuperada",
      recoverPasswordIntro: "Recupere su contraseña",
      flushbarTitleSuccess: "Exito",
      signUpSuccess: "Registrado con exito",
    );
  }
}
