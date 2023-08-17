import 'package:flutter/material.dart';

import 'color_DemosView.dart';

class ColorCycleDemos extends StatefulWidget {
  const ColorCycleDemos({super.key});

  @override
  State<ColorCycleDemos> createState() => _ColorCycleDemos();
}

class _ColorCycleDemos extends State<ColorCycleDemos> {
  Color?
      _backgroundColor; // nullable kullanmamızdaki sebep değer tutmayacak ve her vakit yer kaplamayacak.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.green;
                  print('basıldı');
                });
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorsViewDemos(initialColor: _backgroundColor))
        ],
      ),
    );
  }
}
