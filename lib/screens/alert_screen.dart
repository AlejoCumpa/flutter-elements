import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogiOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Hola Mundo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Ok',
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.red)))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            title: const Text('Hola Mundo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Ok',
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.red)))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () => {
                    Platform.isAndroid
                        ? displayDialogAndroid(context)
                        : displayDialogiOS(context)
                  },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar Alerta'),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close),
        ));
  }
}
