import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardTipe1 extends StatelessWidget {
  const CustomCardTipe1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text("Soy un título"),
            subtitle: Text(
                'Magna tempor pariatur in irure. Proident fugiat aute in ut anim eu eiusmod mollit. Cupidatat quis officia nulla id veniam et deserunt ea ut ipsum ea. Eu ipsum commodo qui magna consequat dolore officia labore excepteur elit aliquip.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
