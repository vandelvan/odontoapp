import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  bool _cambiar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/facodo-logo.png'),
                  ),
                ),
              ),
              Text("alumno"),
              ElevatedButton(
                onPressed: () => setState(() {
                  _cambiar = !_cambiar;
                }),
                child: Text("Cambiar Contraseña"),
              ),
              Opacity(
                opacity: _cambiar ? 1 : 0,
                child: Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Nueva contraseña",
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirmar contraseña",
                      ),
                    ),
                    ElevatedButton(onPressed: null, child: Text("Cambiar"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
