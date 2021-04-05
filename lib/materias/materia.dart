import 'package:flutter/material.dart';
import 'package:odontoapp/drawer/menu.dart';
import 'package:odontoapp/materias/materiaPages/inicio.dart';
import 'package:odontoapp/materias/materiaPages/favs.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

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

  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      title: new Text('Materia A'),
      actions: [searchBar.getSearchAction(context)],
    );
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('escribiste $value!'))));
  }

  _MateriaState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("limpio");
        },
        onClosed: () {
          print("cerrado");
        });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      inicio(context),
      favs(context),
    ];
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Menu(),
      key: _scaffoldKey,
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
