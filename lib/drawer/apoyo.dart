import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Apoyo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alumnos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text("Página de la Facultad de odontología:"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              onTap: () => _launchURL("http://www.odonto.unam.mx/ "),
            ),
            ListTile(
              title: Text(
                  "Servicios escolares facultad de odontología: Servicios escolares Alumnos F.O."),
              leading: Image(
                image: AssetImage('assets/images/sesc.jpg'),
              ),
              onTap: () =>
                  _launchURL("http://132.248.76.121/alumnos/Login.php"),
            ),
            ListTile(
              title: Text(
                  "Historial Académico: Página de la dirección general de administración escolar UNAM."),
              leading: Image(
                image: AssetImage('assets/images/hist.jpg'),
              ),
              onTap: () =>
                  _launchURL("https://www.dgae-siae.unam.mx/www_gate.php"),
            ),
            ListTile(
              title: Text(
                  "Teléfonos y medidas de emergencia UNAM: Link con contenido para reportar emergencias dentro de las instalaciones de la UNAM."),
              leading: Image(
                image: AssetImage('assets/images/tels.jpg'),
              ),
              onTap: () => _launchURL(
                  "https://www.unam.mx/telefonos-y-medidas-de-emergencia"),
            ),
            ListTile(
              title: Text("Becas: Portal del becario UNAM"),
              leading: Image(
                image: AssetImage('assets/images/becas.jpg'),
              ),
              onTap: () =>
                  _launchURL("https://www.becarios.unam.mx/Portal2018/ "),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
