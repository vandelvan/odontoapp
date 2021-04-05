import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacementNamed(
              context,
              '/login',
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/unam-logo.png'),
                      width: 250,
                      height: 250,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Image(
                      image: AssetImage('assets/images/facodo-logo.png'),
                      width: 250,
                      height: 250,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
