import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.orange)),
                Expanded(child: Container(color: Colors.yellow)),
                Expanded(child: Container(color: Colors.green)),
              ])),
          Expanded(flex: 2, child: FlutterLogo()),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround //space araound mevzusu eşit aralık vererek parçalamak için kullanılır.en yakını için evenly kullanılır.
                ,
                crossAxisAlignment: CrossAxisAlignment
                    .center //burdaki cross ise vertical olarak başa sona veya istediğimiz bir bölüme almamızı sağlar.
                ,
                children: [
                  Text('a'),
                  Text('b'),
                  Text('c'),
                ],
              )),
          SizedBox(
            height: 200,
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//expanded bize bir sayfayı kaç değer verirsek onları eşit şekilde parçalamaya yarıyor.
//sadece row ve column' da kullanılır.
