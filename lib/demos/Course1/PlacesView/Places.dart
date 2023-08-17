import 'package:flutter/material.dart';

class Placess extends StatelessWidget {
  const Placess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Card(
            semanticContainer:
                false, //birden fazla içerik içeriyorsa yanlış olmalıdır.
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            clipBehavior:
                Clip.antiAliasWithSaveLayer, //image'leri cardın içine fill'ler
            child: SizedBox(
              height: 400,
              child: Column(
                children: [
                  Expanded(
                    //image içindeki companentler nasıl yapılıyor.
                    //expend yapıştırır.

                    flex: 10,
                    child: Stack(
                      fit: StackFit.expand, //tamamen kapladı.
                      children: [
                        const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/resim1.jpeg"),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Row(
                                        children: [
                                          Icon(Icons.star),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
                                      child: const Icon(
                                        Icons.favorite,
                                        size: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(child: Container()),
                              Container(
                                margin: EdgeInsets.all(30),
                                // decoration: const BoxDecoration(
                                //     gradient: LinearGradient(
                                //         colors: [
                                //           Colors.black,
                                //           Colors.white,
                                //           Colors.black
                                //         ],
                                //         begin: Alignment.centerLeft,
                                //         end: Alignment.centerRight),
                                //     borderRadius: BorderRadius.all(
                                //         Radius.circular(40))),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.grey,
                                                  Colors.white,
                                                  Colors.grey
                                                ],
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                stops: [
                                                  0,
                                                  0.6,
                                                  1.2,
                                                ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40))),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.all(10),
                                            padding: const EdgeInsets.all(10),
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100))),
                                            child: Icon(Icons.location_pin)),
                                        Expanded(
                                            child: Text(
                                          'Sherman Oaks',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
