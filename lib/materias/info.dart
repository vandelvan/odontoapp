import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  static const _url =
      "http://www.odonto.unam.mx/sites/default/files/inline-files/Odontolog%C3%ADa%20Preventiva%202019-2020_0.pdf";
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'KMcOmnc9SPM',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Odontología preventiva"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "La asignatura de Odontología Preventiva se basa en prevenir la aparición de enfermedades orales y a disminuir la destrucción de las estructuras involucradas si la enfermedad ya está establecida, por lo que este curso, se enfoca a brindar al estudiante los conocimientos necesarios para realizar actividades de fomento a la salud y protección específica.\nLas actividades a realizar son propias del nivel de prevención primaria, aunado al conocimiento básico para el diagnóstico precoz de las enfermedades tales como, caries dental, gingivitis/periodontitis.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextButton(
                child: Text("Mas información"),
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
