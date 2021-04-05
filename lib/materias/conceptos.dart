import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Conceptos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              title: Text("Concepto 1"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => Navigator.pushNamed(context, '/definicion'),
            ),
            ListTile(
              title: Text("Concepto 2"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => Navigator.pushNamed(context, '/definicion'),
            ),
            ListTile(
              title: Text("Concepto 3"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => null,
              ),
              onTap: () => Navigator.pushNamed(context, '/definicion'),
            ),
            ListTile(
              title: Text("Concepto 4"),
              leading: Image(
                image: AssetImage('assets/images/facodo-logo.png'),
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
