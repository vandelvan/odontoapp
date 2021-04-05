import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Definicion extends StatelessWidget {
  static const _url = "http://www.odonto.unam.mx/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Concepto X"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Definicion",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                  "Informacion que describe el concepto... Informacion que describe el concepto... Informacion que describe el concepto... Informacion que describe el concepto... Informacion que describe el concepto... Informacion que describe el concepto... Informacion que describe el concepto..."),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextButton(
                child: Text("Mas informacion"),
                onPressed: _launchURL,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
