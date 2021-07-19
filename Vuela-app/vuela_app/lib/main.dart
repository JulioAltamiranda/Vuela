// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Image.asset(
                  'images/logo.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Bienvenidos a Vuela',
                    style:
                        TextStyle(color: hexToColor('#000024'), fontSize: 30)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60, top: 10),
                child: Text('Disfruta con seguridad y alegría',
                    style:
                        TextStyle(color: hexToColor('#707070'), fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  height: 50.0,
                  minWidth: 344,
                  onPressed: () {},
                  color: hexToColor('#F28740'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: hexToColor('#F28740'))),
                  child: Text('Continuar con Correo',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new FlatButton.icon(
                  // Un icono puede recibir muchos atributos, aqui solo usaremos icono, tamaño y color
                  icon: Image.asset(
                    'images/Icon awesome-facebook.png',
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: hexToColor('#1B54CF'))),
                  label: const Text('Continuar con Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  color: hexToColor('#1B54CF'),
                  height: 50.0,
                  minWidth: 344,
                  // Esto mostrara 'Me encanta' por la terminal
                  onPressed: () {
                    print('Me encanta');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new FlatButton.icon(
                  height: 50.0,
                  minWidth: 344,
                  onPressed: () {},
                  color: hexToColor('#F5F6F8'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: hexToColor('#C1C1C1'))),
                  icon: Image.asset(
                    'images/google-logo.png',
                  ),
                  label: Text('Continuar con Google',
                      style: TextStyle(color: hexToColor('#0D0D0D'))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 40),
                child: new Image.asset(
                  'images/footer-logo.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text('v. 2.4155',
                    style: TextStyle(color: hexToColor('#8C8C8C'))),
              )
            ],
          ),
        ),
      )),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
