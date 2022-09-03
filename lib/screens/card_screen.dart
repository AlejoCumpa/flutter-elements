import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipe1(),
            SizedBox(height: 20),
            CustomCardType2(
                imageURL:
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e79bc605-2621-4b2b-bb65-378ee97a3340/d8lbudd-edf8093c-7905-4998-aaeb-dbb34dbc83ce.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2U3OWJjNjA1LTI2MjEtNGIyYi1iYjY1LTM3OGVlOTdhMzM0MFwvZDhsYnVkZC1lZGY4MDkzYy03OTA1LTQ5OTgtYWFlYi1kYmIzNGRiYzgzY2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.yGOQx9eg3g9zVsYbkJCablSZLqH78juP51Vs3PiyWIc'),
            SizedBox(height: 20),
            CustomCardType2(
              imageURL:
                  'https://media.istockphoto.com/photos/deserted-alien-planet-picture-id1098413160?k=20&m=1098413160&s=612x612&w=0&h=HCCS-JSVyL1f_xQqVTib_SBkUA_KXzZUaTNp2A1ffpQ=',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              name: 'Un hermoso paisaje',
              imageURL:
                  'https://previews.123rf.com/images/jamesteohart/jamesteohart1806/jamesteohart180600001/103603265-3d-rendering-futuristic-concept-city-landscape-skyline-flyover-highway-bridge-.jpg',
            )
          ],
        ));
  }
}
