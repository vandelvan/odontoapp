import 'package:flutter/material.dart';

Padding inicio(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text("Informacion"),
          leading: Icon(Icons.info),
          onTap: () => Navigator.pushNamed(context, '/info'),
        ),
        ListTile(
          title: Text("Conceptos"),
          leading: Icon(Icons.book),
          onTap: () => Navigator.pushNamed(context, '/conceptos'),
        ),
        ListTile(
          title: Text("Videos"),
          leading: Icon(Icons.video_library),
          onTap: () => Navigator.pushNamed(context, '/videos'),
        ),
        ListTile(
          title: Text("Agenda"),
          leading: Icon(Icons.calendar_today),
        ),
        ListTile(
          title: Text("Protocolo Covid-19"),
          leading: Icon(Icons.warning),
          onTap: () => Navigator.pushNamed(context, '/protocolo'),
        ),
      ],
    ),
  );
}
