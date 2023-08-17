import 'package:flutter/material.dart';

class scroll1 extends StatelessWidget {
  const scroll1({
    super.key,
    required this.abc,
  });

  final List<Map> abc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: abc.length, //10 tane item oluşturdu
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          Map textwidget = abc[index];
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
            width: 200,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 170,
                    child: ClipRRect(
                      //çizim yapıp o çizime resimi yerleştriyor.
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        textwidget["image"],
                        fit: BoxFit.cover,
                      ),
                    ) //bu resimleri nasıl yuvarlak köşeli yapacağım yapacağım
                    ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(textwidget["text"]),
                      Expanded(child: Container())
                    ],
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    Text(textwidget["price"]),
                    Expanded(child: Container())
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
