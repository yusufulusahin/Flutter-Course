import 'package:flutter/material.dart';

class Colorlearn extends StatelessWidget {
  const Colorlearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          height: 100,
          margin: EdgeInsets.all(20),
          child: Text(
            'data',
            textAlign: TextAlign.center,
          ),
          width: 100,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ProjectColor().containerColor)),
    );
  }
}

class ProjectColor {
  final Color containerColor = Colors.deepOrange;
}
