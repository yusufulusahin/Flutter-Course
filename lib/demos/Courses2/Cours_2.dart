import 'package:flutter/material.dart';

import 'Listeler/listeler.dart';
import 'Scrollls/scrolll1.dart';
import 'Scrollls/scrolll2.dart';
import 'bottom bar/bottombars.dart';

class Course2 extends StatefulWidget {
  const Course2({super.key});

  @override
  State<Course2> createState() => _Course2State();
}

class _Course2State extends State<Course2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Icon(
                  Icons.person_2_outlined,
                  size: 35,
                )),
            Container(
              child: const Text(
                'Hi! Yusuf',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              margin: const EdgeInsets.only(left: 20),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 35,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                border:
                    Border.all(style: BorderStyle.solid, color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const TextField(
                inputFormatters: [],
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    hintText: 'Where do you want to go?',
                    hintStyle: TextStyle(fontSize: 18))),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Building with History',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
              ),
              Expanded(child: Container())
            ],
          ),
          scroll1(abc: abc),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: const Text(
                    'Last Visited',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )),
              Expanded(child: Container()),
              Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )))
            ],
          ),
          scroll2(def: def),
          const BottomBarss(),
        ],
      ),
    );
  }
}
