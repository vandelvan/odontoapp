import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Protocolo extends StatelessWidget {
  static const _url = "http://www.odonto.unam.mx/";
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'fWqhn02KDmw',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Protocolo Covid-19"),
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
