import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            margin: ProjectMargin.cardMargin,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
            shape: StadiumBorder(
              side: BorderSide(width: 4),
            ),
          ),
          const Card(
            margin: ProjectMargin.cardMargin,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
            shape: StadiumBorder(
              side: BorderSide(width: 4),
            ),
          ),
          CustomCard(child: Center(child: Text('Yusuf')))
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class CustomCard extends StatelessWidget {
  @override
  const CustomCard({super.key, required this.child});
  final Widget child;
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      child: SizedBox(
        height: 100,
        width: 300,
        child: child,
      ),
      shape: StadiumBorder(
        side: BorderSide(width: 4),
      ),
    );
  }
}


//Card ekranımızda bir tık önde durur. güzel olur.
// margin özelliği vardır ve EdgeInsets alır.
//Border ÇEşitleri => StatiumBorder(),CircleBorder : yuvarlak,RaundedRectengalBorder: köşeli dikdörtgen
