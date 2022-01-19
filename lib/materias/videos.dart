import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    final _user = ModalRoute.of(context).settings.arguments as User;
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
              title: Text(
                  "Manejo de instrumental para la eliminación de cálculo supragingival"),
              leading: Image(
                image: AssetImage('assets/images/no.jpg'),
              ),
              trailing: IconButton(
                icon: Icon(
                  _user.favv ? Icons.favorite : Icons.favorite_border_outlined,
                ),
                onPressed: () {
                  setState(() {
                    _user.favv = !_user.favv;
                  });
                },
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
