import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: ProjectPadding.pagePaddingVertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  height: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  color: Colors.white,
                  height: 100,
                ),
              ),
              Padding(
                padding: ProjectPadding.pagePaddingRightOnly +
                    ProjectPadding.pagePaddingVertical,
                child: Text('Uluşahin'),
              ),
            ],
          )),
    );
  }
}

class ProjectPadding {
  static final pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static final pagePaddingRightOnly = EdgeInsets.only(right: 20);
}

//Bir mobil uygulamada paddingler çok önemlidir ve eşit olmalıdır.
//boşluk verirken sized box'tan ziyade wrap widget deyip paddingle sarmalıyoruz

// EdgeInsets parametresinde zero => hazırda olan paddingi sıfırlama,
//All => her taraftan ,sadece bir tarafında symetric vertical vertical sadece yukarıdan ,yanlardan horizontal.

//Birbiriyle birleştirmek istiyorsak "+" parametresini kullanmalıyız.
//Eğer Bütün Cardların teması aynı ise shape özelliğini mainden verebiliyoruz "cardTheme" adı Altında