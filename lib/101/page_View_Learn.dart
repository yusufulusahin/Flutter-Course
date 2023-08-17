import 'package:flutter/material.dart';
import 'package:kurs/101/stack_learn.dart';

import '../demos/jeep_demos_learn.dart';
import 'column_row_Learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

final _pagecontroller = PageController(viewportFraction: 0.7);

class _PageViewLearnState extends State<PageViewLearn> {
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: padding().bosluk,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
                onPressed: () {
                  _pagecontroller.previousPage(
                      duration: Duration(seconds: 1), curve: Curves.slowMiddle);
                },
                child: const Icon(Icons.chevron_left)),
            Text(
              _currentPageIndex.toString(),
            ),
            FloatingActionButton(
                onPressed: () {
                  _pagecontroller.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn);
                },
                child: const Icon(Icons.chevron_right)),
          ],
        ),
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pagecontroller,
        onPageChanged: _updatePageIndex,
        children: [
          const StackLearnView(),
          ColumnRowLearn(),
          const Jeep_cj1_Learn(),
        ],
      ),
    );
  }
}

//PageView companenti bize sayfalar arası nasıl gezebileceğimizi gösteriyor
//kaydırmalı.
class padding {
  final EdgeInsets bosluk = EdgeInsets.only(left: 25);
}
