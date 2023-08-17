import 'package:flutter/material.dart';

class BottomBarss extends StatelessWidget {
  const BottomBarss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 0.1)),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.explore)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
    );
  }
}
