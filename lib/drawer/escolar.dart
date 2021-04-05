import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Escolar extends StatelessWidget {
  static const _url = "http://www.odonto.unam.mx/index.php";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apoyo Escolar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text("Breve Descripcion"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              onTap: _launchURL,
            ),
            ListTile(
              title: Text("Breve Descripcion"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              onTap: _launchURL,
            ),
            ListTile(
              title: Text("Breve Descripcion"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              onTap: _launchURL,
            ),
            ListTile(
              title: Text("Breve Descripcion"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              onTap: _launchURL,
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
