import 'package:flutter/material.dart';

class NavigationBarr extends StatelessWidget {
  const NavigationBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.explore)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
