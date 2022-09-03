import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Smash Bros',
    'Final Fantasy'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    leading: const Icon(Icons.abc_sharp),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
