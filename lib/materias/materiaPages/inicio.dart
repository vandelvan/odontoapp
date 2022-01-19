import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url =
    "http://www.odonto.unam.mx/sites/default/files/inline-files/Odontolog%C3%ADa%20Preventiva%202019-2020_0.pdf";
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
Padding inicio(BuildContext context, User _user) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text("Información"),
          leading: Icon(Icons.info),
          onTap: () => Navigator.pushNamed(context, '/info'),
        ),
        ListTile(
          title: Text("Conceptos"),
          leading: Icon(Icons.book),
          onTap: () =>
              Navigator.pushNamed(context, '/conceptos', arguments: _user),
        ),
        ListTile(
          title: Text("Videos"),
          leading: Icon(Icons.video_library),
          onTap: () =>
              Navigator.pushNamed(context, '/videos', arguments: _user),
        ),
        ListTile(
          title: Text("Quiz"),
          leading: Icon(Icons.quiz),
          onTap: () => Navigator.pushNamed(context, '/quiz'),
        ),
        ListTile(
          title: Text("Programa de estudio"),
          leading: Icon(
            Icons.table_chart,
          ),
          onTap: () => _launchURL(),
        ),
      ],
    ),
  );
}
