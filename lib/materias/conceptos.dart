import 'package:OdontoUNAM/user.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Conceptos extends StatefulWidget {
  @override
  _ConceptosState createState() => _ConceptosState();
}

class _ConceptosState extends State<Conceptos> {
  static const _url =
      "http://www.odonto.unam.mx/sites/default/files/inline-files/O_preventiva.pdf";
  @override
  Widget build(BuildContext context) {
    final _user = ModalRoute.of(context).settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text("Odontología preventiva"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(
                  "Pasos para la aplicación de selladores de fosetas y fisuras"),
              leading: Image(
                image: AssetImage('assets/images/selladores.jpg'),
              ),
              trailing: IconButton(
                icon: Icon(
                  _user.favc ? Icons.favorite : Icons.favorite_border_outlined,
                ),
                onPressed: () {
                  setState(() {
                    _user.favc = !_user.favc;
                  });
                },
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
