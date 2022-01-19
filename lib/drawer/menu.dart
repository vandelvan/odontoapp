import 'package:flutter/material.dart';
import 'package:odontoapp/drawer/contacto.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
  static const _url =
      "http://www.odonto.unam.mx/index.php/es/secretaria-de-servicios-escolares-licenciatura";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(),
          Image(
            image: AssetImage('assets/images/facodo-logo.png'),
            height: 150,
          ),
          Divider(),
          ListTile(
            title: Text("Mi perfil"),
            onTap: () => Navigator.pushNamed(context, '/perfil'),
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
            title: Text("Servicios escolares"),
            onTap: _launchURL,
          ),
          ListTile(
            title: Text("Apoyo Escolar"),
            onTap: () => Navigator.pushNamed(context, '/escolar'),
          ),
          ListTile(
            title: Text("Sitios de interes"),
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

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
