import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: "Odontologia",
      logo: "assets/images/facodo-logo.png",
      messages: _configTextos(),
      onLogin: (LoginData) {
        Navigator.pushReplacementNamed(context, '/home');
      },
      emailValidator: (value) {
        return null;
      },
      passwordValidator: (value) {
        return null;
      },
      onRecoverPassword: (String) {},
      onSignup: (LoginData) {},
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
