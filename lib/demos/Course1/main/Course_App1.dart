import 'dart:ui';

import 'package:flutter/material.dart';

import '../LocationPlace/LocationPlace.dart';
import '../PlacesView/Places.dart';
import '../bottombar/bottombar.dart';

class Course1 extends StatefulWidget {
  const Course1({super.key});
//sayfanın bütününe nasıl padding vereceğiz.
  @override
  State<Course1> createState() => _Course1State();
}

class _Course1State extends State<Course1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.category_outlined,
                  size: 40)), //tıkladığımda biraz solda tıklıyor bunu sor.
          //birde bu ıcon_outlined vesayre bunların farkı ne bunlarıda sor.
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: colorss().ColorsTexfieldback,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    maxLength: 20,
                    inputFormatters: [],
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Colors.black),
                        hintText: 'Search'),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 18, color: Colors.black),
                    buildCounter: (context,
                        {int? currentLength,
                        bool? isFocused,
                        int? maxLength}) {}),
              ),
            ),
          )
        ],
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 25,
              child: Column(
                children: [
                  const SizedBox(
                    width:
                        500, //Yarın sor width ayarlamadan textleri nasıl sola kaydırabilirim.
                    //sayfanın geneline nasıl padding verebilirim
                    child: Text(
                      'Where Do You',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Text('Want To Discover?',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                  Container(
                    width: 500,
                    child: Text('Discover the best home for you.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: Locationn(),
            ),
            Expanded(flex: 50, child: Placess()),
            Expanded(flex: 10, child: NavigationBarr())
          ],
        ),
      ),
    );
  }
}

class colorss {
  final Color ColorsTexfieldback = Color.fromARGB(255, 241, 240, 240);
}
//örneklerde neden Row içindeki childirende <Widget> yazıyor.