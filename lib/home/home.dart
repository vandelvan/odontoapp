import 'package:flutter/material.dart';
import 'package:odontoapp/drawer/menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecciona tu materia"),
      ),
      drawer: Menu(),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget>[
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/odontoprev.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "Odontología preventiva",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, '/materia'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Materia B"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Materia C"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Materia D"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Materia E"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Materia F"),
          ),
        ],
      ),
    );
  }
}
