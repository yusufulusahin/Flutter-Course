import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});

  final IconSizes iconSize = IconSizes();
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.background,
                size: iconSize.iconSmall, //IconSizes().iconSmall aynı şey
              )),
          SizedBox(
            height: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: IconColors().buttonCollor,
                size: iconSize.iconSmall, //IconSizes().iconSmall aynı şey
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color buttonCollor = Colors.red;
}
