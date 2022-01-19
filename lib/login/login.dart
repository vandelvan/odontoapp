import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: "Odontología",
      logo: "assets/images/facodo-logo.png",
      messages: _configTextos(),
      onLogin: (LoginData data) {
        return Future.delayed(Duration(milliseconds: 500)).then((_) {
          if ((data.name == "312020589" && data.password == "13081995") ||
              (data.name == "309298979" && data.password == "24111991")) {
            Navigator.pushReplacementNamed(context, '/home');
            return null;
          } else {
            return "Usuario Invalido";
          }
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
  }

  LoginMessages _configTextos() {
    return LoginMessages(
      usernameHint: "Numero de cuenta",
      passwordHint: "Contraseña",
      confirmPasswordHint: "Confirmar contraseña",
      loginButton: "Entrar",
      signupButton: "Registrarse",
      forgotPasswordButton: "Olvide mi contraseña",
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
