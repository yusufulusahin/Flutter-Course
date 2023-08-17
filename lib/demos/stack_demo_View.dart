import 'package:flutter/material.dart';

import '../202/core/core.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: RandomImage(),
                  bottom: _cardHeight / 2,
                ),
                Positioned(
                    height: _cardHeight,
                    bottom: 0,
                    width: 200,
                    child: Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(),
                    ))
              ],
            ),
          ),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
