import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:OdontoUNAM/drawer/menu.dart';
import 'package:OdontoUNAM/materias/materiaPages/inicio.dart';
import 'package:OdontoUNAM/materias/materiaPages/favs.dart';

class Materia extends StatefulWidget {
  @override
  _MateriaState createState() => _MateriaState();
}

class _MateriaState extends State<Materia> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      title: new Text('Odontología preventiva'),
      actions: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _user = ModalRoute.of(context).settings.arguments as User;
    List<Widget> _widgetOptions = <Widget>[
      inicio(context, _user),
      favs(context, _user),
    ];
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Menu(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
