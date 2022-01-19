import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacto extends StatelessWidget {
  const Contacto();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Alejandro Villarruel Castillo",
        ),
        TextButton(
          child: Text("alexrockstar123@comunidad.unam.mx"),
          onPressed: () => _email("alexrockstar123@comunidad.unam.mx"),
        ),
        Image(image: AssetImage("assets/images/alex.jpg")),
        Divider(),
        Text(
          "José Iván Orozco Torrez",
        ),
        TextButton(
          child: Text("jose.otorrez@alumnos.udg.mx"),
          onPressed: () => _email("jose.otorrez@alumnos.udg.mx"),
        ),
        Image(image: AssetImage("assets/images/ivan.jpg")),
        Divider(),
        Text(
          "Jesús Manuel Diaz de león Azuara",
        ),
        TextButton(
          child: Text("dileazjm@fo.odonto.unam.mx"),
          onPressed: () => _email("dileazjm@fo.odonto.unam.mx"),
        ),
        Divider(),
      ],
    );
  }

  void _email(_mail) async => await canLaunch("mailto:" + _mail)
      ? await launch("mailto:" + _mail)
      : throw 'Could not mail';
}
