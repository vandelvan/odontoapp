import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

Padding favs(BuildContext context, User _user) {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'KMcOmnc9SPM',
    flags: YoutubePlayerFlags(autoPlay: false),
  );
  const _url =
      "http://www.odonto.unam.mx/sites/default/files/inline-files/O_preventiva.pdf";
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (_user.favc)
          ListTile(
            title: Text(
                "Pasos para la aplicación de selladores de fosetas y fisuras"),
            leading: Image(
              image: AssetImage('assets/images/selladores.jpg'),
            ),
            onTap: () async => await canLaunch(_url)
                ? await launch(_url)
                : throw 'Could not launch $_url',
          ),
        if (_user.favv)
          ListTile(
            title: Text(
                "Manejo de instrumental para la eliminación de cálculo supragingival"),
            leading: Image(
              image: AssetImage('assets/images/no.jpg'),
            ),
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => showVideo(_controller),
            ),
          ),
      ],
    ),
  );
}

SimpleDialog showVideo(YoutubePlayerController _controller) {
  return SimpleDialog(
    children: [
      YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    ],
  );
}
