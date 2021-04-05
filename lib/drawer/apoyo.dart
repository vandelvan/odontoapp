import 'package:flutter/material.dart';

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

class Apoyo extends StatefulWidget {
  @override
  _ApoyoState createState() => _ApoyoState();
}

class _ApoyoState extends State<Apoyo> {
  static List<Item> generateItems() {
    List<Item> _lista = <Item>[];
    _lista
        .add(Item(headerValue: "Acoso Bullying", expandedValue: "Explicacion"));
    _lista.add(Item(headerValue: "Emergencia", expandedValue: "Explicacion"));
    _lista.add(
        Item(headerValue: "Sintomas Covid-19", expandedValue: "Explicacion"));
    _lista.add(Item(headerValue: "Becas", expandedValue: "Explicacion"));
    return _lista;
  }

  List<Item> _data = generateItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apoyo al estudiante"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _data[index].isExpanded = !isExpanded;
                });
              },
              children: _data.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.headerValue),
                    );
                  },
                  body: ListTile(
                    title: Text(item.expandedValue),
                  ),
                  isExpanded: item.isExpanded,
                  canTapOnHeader: true,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
