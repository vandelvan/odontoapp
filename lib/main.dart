import 'package:flutter/material.dart';
import 'package:OdontoUNAM/drawer/apoyo.dart';
import 'package:OdontoUNAM/drawer/perfil.dart';
import 'package:OdontoUNAM/drawer/sitios.dart';
import 'package:OdontoUNAM/materias/conceptos.dart';
import 'package:OdontoUNAM/materias/protocolo.dart';
import 'package:OdontoUNAM/materias/videos.dart';
import 'package:OdontoUNAM/home/home.dart';
import 'package:OdontoUNAM/materias/materia.dart';
import 'package:OdontoUNAM/materias/info.dart';
import 'package:OdontoUNAM/login/login.dart';
import 'package:OdontoUNAM/materias/quiz.dart';

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
        '/perfil': (BuildContext context) => Perfil(),
        '/apoyo': (BuildContext context) => Apoyo(),
        '/sitios': (BuildContext context) => Sitios(),
      },
    );
  }
}
