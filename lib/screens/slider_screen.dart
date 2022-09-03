import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderVlaue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderVlaue = value;
                    setState(() {});
                  }
                : null,
            min: 50,
            max: 400,
            value: _sliderVlaue,
          ),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value ?? true;
                  })),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value;
                  })),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: const NetworkImage(
                      'https://pics.filmaffinity.com/the_batman-449856406-large.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderVlaue * 2),
            ),
          ),
        ],
      ),
    );
  }
}
