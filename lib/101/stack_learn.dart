import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.yellow,
              height: 100,
            ),
          ),
          Positioned(
              height: 100,
              width: 25,
              bottom: 0,
              child: Container(
                color: Colors.green,
              )),
          Positioned(
              top: 20,
              child: Container(
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
//son verdiğimiz parametre ilk verdiğimizin her zaman önünde olur.
// bir yerde üst üste geçme varsa orda stack kullanacağız.


