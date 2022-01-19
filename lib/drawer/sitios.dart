import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sitios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sitios de interes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text("COVID 19"),
              onTap: () => _launchURL("https://coronavirus.gob.mx/"),
            ),
            ListTile(
              title: Text(
                  "PLM: Herramientas prácticas y útiles para el ejercicio diario de la medicina en México, contiene información sobre medicamentos, sustancias e interacciones."),
              leading: Image(
                image: AssetImage('assets/images/plm.png'),
              ),
              onTap: () => _launchURL("https://www.medicamentosplm.com/"),
            ),
            ListTile(
              title: Text(
                  "Secretaría de salud: Página oficial de la secretaría de salud."),
              leading: Image(
                image: AssetImage('assets/images/salud.jpg'),
              ),
              onTap: () => _launchURL("https://www.gob.mx/salud"),
            ),
            ListTile(
              title: Text(
                  "Asociación dental mexicana: Página oficial de la asociación dental mexicana."),
              leading: Image(
                image: AssetImage('assets/images/as.jpg'),
              ),
              onTap: () => _launchURL("https://www.adm.org.mx/ "),
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
