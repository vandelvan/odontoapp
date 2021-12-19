import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'NpEaa2P7qZI',
      flags: YoutubePlayerFlags(autoPlay: false),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Materia A"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text("Video 1"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => showVideo(_controller),
              ),
            ),
            ListTile(
              title: Text("Video 2"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => showVideo(_controller),
              ),
            ),
            ListTile(
              title: Text("Video 3"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => showVideo(_controller),
              ),
            ),
            ListTile(
              title: Text("Video 4"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
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
