import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Conceptos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => Navigator.pushNamed(context, '/definicion'),
            ),
          ],
        ),
      ),
    );
  }
}
