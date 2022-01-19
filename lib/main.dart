import 'package:flutter/material.dart';
import 'package:odontoapp/drawer/apoyo.dart';
import 'package:odontoapp/drawer/escolar.dart';
import 'package:odontoapp/drawer/perfil.dart';
import 'package:odontoapp/drawer/sitios.dart';
import 'package:odontoapp/materias/conceptos.dart';
import 'package:odontoapp/materias/definicion.dart';
import 'package:odontoapp/materias/protocolo.dart';
import 'package:odontoapp/materias/videos.dart';
import 'package:odontoapp/home/home.dart';
import 'package:odontoapp/materias/materia.dart';
import 'package:odontoapp/materias/info.dart';
import 'package:odontoapp/login/login.dart';
import 'package:odontoapp/materias/quiz.dart';

void main() {
  runApp(OdontoApp());
}

class OdontoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/materia': (BuildContext context) => Materia(),
        '/info': (BuildContext context) => Info(),
        '/protocolo': (BuildContext context) => Protocolo(),
        '/videos': (BuildContext context) => Videos(),
        '/quiz': (BuildContext context) => Quiz(),
        '/conceptos': (BuildContext context) => Conceptos(),
        '/definicion': (BuildContext context) => Definicion(),
        '/perfil': (BuildContext context) => Perfil(),
        '/apoyo': (BuildContext context) => Apoyo(),
        '/escolar': (BuildContext context) => Escolar(),
        '/sitios': (BuildContext context) => Sitios(),
      },
    );
  }
}
