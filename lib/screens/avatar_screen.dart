import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://lh3.googleusercontent.com/a-/AOh14Gi2lPQ5fj5cRDJX9ktisc6bMN79077iavAmvJrp=k-s256'),
        ),
      ),
    );
  }
}
