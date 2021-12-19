import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  var res1 = ["Microbrush.", "Porta grapas.", "Espejo.", "Ácido grabador."];
  var res2 = ["50 segundos.", "30 segundos.", "40 segundos.", "1 minuto."];
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
                  value: true,
                  onChanged: null,
                  title: Text("Dientes que no han erupcionado por completo."),
                ),
                CheckboxListTile(
                  value: true,
                  onChanged: null,
                  title: Text("Dientes con cualquier grado de caries."),
                ),
                CheckboxListTile(
                  value: false,
                  onChanged: null,
                  title: Text("Pacientes de edad escolar."),
                ),
                CheckboxListTile(
                  value: false,
                  onChanged: null,
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
                    value: false,
                    groupValue: res1,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  title: Text(res1[1]),
                  leading: Radio(
                    value: true,
                    groupValue: res1,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  title: Text(res1[2]),
                  leading: Radio(
                    value: false,
                    groupValue: res1,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  title: Text(res1[3]),
                  leading: Radio(
                    value: false,
                    groupValue: res1,
                    onChanged: null,
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
                    value: false,
                    groupValue: res2,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  title: Text(res2[1]),
                  leading: Radio(
                    value: false,
                    groupValue: res2,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  title: Text(res2[2]),
                  leading: Radio(
                    value: true,
                    groupValue: res2,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  title: Text(res2[3]),
                  leading: Radio(
                    value: false,
                    groupValue: res2,
                    onChanged: null,
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
