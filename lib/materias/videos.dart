import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'KMcOmnc9SPM',
      flags: YoutubePlayerFlags(autoPlay: false),
    );
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
              title: Text("Odontología preventiva"),
              leading: Image(
                image: AssetImage('assets/images/odontoprev.jpg'),
              ),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => showVideo(_controller),
              ),
            ),
          ],
        ),
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
}
