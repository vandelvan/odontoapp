import 'dart:io';

import 'package:OdontoUNAM/user.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:OdontoUNAM/services/DatabaseHandler.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  final ImagePicker _picker = ImagePicker();
  bool _cambiar = false;
  DatabaseHandler handler;
  final c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    this.handler = DatabaseHandler();
    this.handler.initializeDB().whenComplete(() async {
      setState(() {});
    });
    final _user = ModalRoute.of(context).settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 190.0,
                  height: 190.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: _user.pic.length > 9
                          ? FileImage(File(_user.pic))
                          : AssetImage('assets/images/' + _user.pic),
                    ),
                  ),
                ),
                onTap: () async {
                  File _image;
                  final pickedFile =
                      await _picker.getImage(source: ImageSource.gallery);
                  _image = File(pickedFile.path);
                  final Directory extDir =
                      await getApplicationDocumentsDirectory();
                  String dirPath = extDir.path;
                  final String filePath = '$dirPath' + _user.pic;
                  imageCache.clear();
                  final File newImage = await _image.copy(filePath);
                  setState(() {
                    _user.pic = filePath;
                    handler.saveUser(_user);
                  });
                },
              ),
              Text(_user.username),
              ElevatedButton(
                onPressed: () => setState(() {
                  _cambiar = !_cambiar;
                }),
                child: Text("Cambiar Contraseña"),
              ),
              Opacity(
                opacity: _cambiar ? 1 : 0,
                child: Column(
                  children: [
                    TextField(
                      controller: c,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Nueva contraseña",
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _user.pass = c.text;
                            handler.saveUser(_user);
                          });
                        },
                        child: Text("Cambiar"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
