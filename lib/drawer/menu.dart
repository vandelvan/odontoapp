import 'dart:io';

import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:OdontoUNAM/drawer/contacto.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _user = ModalRoute.of(context).settings.arguments as User;
    return Drawer(
      child: ListView(
        children: [
          ListTile(),
          Image(
            image: _user.pic.length > 9
                ? FileImage(File(_user.pic))
                : AssetImage('assets/images/' + _user.pic),
            height: 150,
          ),
          Divider(),
          ListTile(
            title: Text("Mi perfil"),
            onTap: () =>
                Navigator.pushNamed(context, '/perfil', arguments: _user),
          ),
          ListTile(
            title: Text("Alumnos"),
            onTap: () => Navigator.pushNamed(context, '/apoyo'),
          ),
          ListTile(
            title: Text("Tutorial"),
            onTap: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
          ListTile(
            title: Text("Sitios de interés"),
            onTap: () => Navigator.pushNamed(context, '/sitios'),
          ),
          ListTile(
            title: Text("Contacto"),
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                content: Contacto(),
                scrollable: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
