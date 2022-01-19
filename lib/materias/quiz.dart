import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

enum Res1 { Microbrush, porta, espejo, acido }
enum Res2 { ci, tr, cu, un }

class _QuizState extends State<Quiz> {
  var res1 = ["Microbrush.", "Porta grapas.", "Espejo.", "Ácido grabador."];
  var res2 = ["50 segundos.", "30 segundos.", "40 segundos.", "1 minuto."];
  var _resp1 = [false, false, false, false];
  var _color1 = [Colors.white, Colors.white, Colors.white, Colors.white];
  var _color2 = Colors.blueAccent;
  var _color3 = Colors.blueAccent;
  Res1 _resp2 = Res1.Microbrush;
  Res2 _resp3 = Res2.ci;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Odontología preventiva"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "¿Menciona 2 contraindicaciones para la aplicación de selladores de fosetas y fisuras?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CheckboxListTile(
                  checkColor: _color1[0],
                  value: _resp1[0],
                  onChanged: (val) {
                    setState(() {
                      _resp1[0] = val;
                    });
                  },
                  title: Text("Dientes que no han erupcionado por completo."),
                ),
                CheckboxListTile(
                  checkColor: _color1[1],
                  value: _resp1[1],
                  onChanged: (val) {
                    setState(() {
                      _resp1[1] = val;
                    });
                  },
                  title: Text("Dientes con cualquier grado de caries."),
                ),
                CheckboxListTile(
                  checkColor: _color1[2],
                  value: _resp1[2],
                  onChanged: (val) {
                    setState(() {
                      _resp1[2] = val;
                    });
                  },
                  title: Text("Pacientes de edad escolar."),
                ),
                CheckboxListTile(
                  checkColor: _color1[3],
                  value: _resp1[3],
                  onChanged: (val) {
                    setState(() {
                      _resp1[3] = val;
                    });
                  },
                  title: Text("Dientes con fosetas y fisuras profundas."),
                ),
                Text(
                  "¿Cuál de los siguientes instrumentos sirve para realizar un aislamiento absoluto?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  title: Text(res1[0]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color2),
                    value: Res1.Microbrush,
                    groupValue: _resp2,
                    onChanged: (Res1 val) {
                      setState(() {
                        _resp2 = val;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(res1[1]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color2),
                    value: Res1.porta,
                    groupValue: _resp2,
                    onChanged: (Res1 val) {
                      setState(() {
                        _resp2 = val;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(res1[2]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color2),
                    value: Res1.espejo,
                    groupValue: _resp2,
                    onChanged: (Res1 val) {
                      setState(() {
                        _resp2 = val;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(res1[3]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color2),
                    value: Res1.acido,
                    groupValue: _resp2,
                    onChanged: (Res1 val) {
                      setState(() {
                        _resp2 = val;
                      });
                    },
                  ),
                ),
                Text(
                  "¿Cuál es el tiempo de polimerización de un sellador de fosetas y fisuras?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  title: Text(res2[0]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color3),
                    value: Res2.ci,
                    groupValue: _resp3,
                    onChanged: (Res2 val) {
                      setState(() {
                        _resp3 = val;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(res2[1]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color3),
                    value: Res2.tr,
                    groupValue: _resp3,
                    onChanged: (Res2 val) {
                      setState(() {
                        _resp3 = val;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(res2[2]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color3),
                    value: Res2.cu,
                    groupValue: _resp3,
                    onChanged: (Res2 val) {
                      setState(() {
                        _resp3 = val;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(res2[3]),
                  leading: Radio(
                    fillColor: MaterialStateProperty.all(_color3),
                    value: Res2.un,
                    groupValue: _resp3,
                    onChanged: (Res2 val) {
                      setState(() {
                        _resp3 = val;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_resp1[0]) {
                        _color1[0] = Colors.greenAccent;
                      }
                      if (_resp1[1]) {
                        _color1[1] = Colors.greenAccent;
                      }

                      if (_resp1[2]) {
                        _color1[2] = Colors.redAccent;
                      }
                      if (_resp1[3]) {
                        _color1[3] = Colors.redAccent;
                      }
                      if (_resp2 == Res1.porta) {
                        _color2 = Colors.greenAccent;
                      } else {
                        _color2 = Colors.redAccent;
                      }

                      if (_resp3 == Res2.cu) {
                        _color3 = Colors.greenAccent;
                      } else {
                        _color3 = Colors.redAccent;
                      }
                    });
                  },
                  child: Text(
                    "Verificar respuestas",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
