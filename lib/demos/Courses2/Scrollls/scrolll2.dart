import 'package:flutter/material.dart';

class scroll2 extends StatelessWidget {
  const scroll2({
    super.key,
    required this.def,
  });

  final List<Map> def;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      height: 280,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: def.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          Map textwidget = def[index];
          return Container(
            height: 150,
            margin: const EdgeInsets.only(bottom: 1),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  height: 120,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      textwidget["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: Text(
                              textwidget["text"],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                      Container(
                          // child: Text(textwidget["açiklama"]),
                          ),
                      Container(
                        child: Text(
                          textwidget["açiklama"],
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
