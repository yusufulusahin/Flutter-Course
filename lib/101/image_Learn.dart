import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: JeepRenk().jeepColor1),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 300,
              child: Image.asset(
                "assets/Jeep-PNG-Images-HD.png",
              ))
        ],
      ),
    );
  }
}

class JeepRenk {
  final Color jeepColor1 = Color(0xFFb5003b);
}

//Image.asset localden elle indirilen seçimi ekleme
//file dosyadan seçme
//network internetten indirme