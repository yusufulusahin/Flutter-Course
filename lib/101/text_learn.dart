import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});

  String name = 'Yusuf';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Buy the best one",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            "Buy the best one",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            "Buy the best one",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      decoration: TextDecoration.underline,
      fontSize: 16,
      color: Colors.lime);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'merhaba';
}
