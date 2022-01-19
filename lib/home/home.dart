import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:OdontoUNAM/drawer/menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _user = ModalRoute.of(context).settings.arguments as User;
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
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/odontoprev.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
              child: Text(
                "Odontología preventiva",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () =>
                Navigator.pushNamed(context, '/materia', arguments: _user),
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/biodental.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.6), BlendMode.dstATop),
                ),
              ),
              child: Text(
                "Biomateriales dentales",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: null,
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/endo.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.6), BlendMode.dstATop),
                ),
              ),
              child: Text(
                "Endodontología I",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: null,
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/peri.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
              child: Text(
                "Periodontología I",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: null,
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/reh.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
              child: Text(
                "Rehabilitación Oral I",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: null,
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/cir.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
              child: Text(
                "Cirugía Oral I",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
