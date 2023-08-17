import 'package:flutter/material.dart';

import '../main/Course_App1.dart';

class Locationn extends StatelessWidget {
  const Locationn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, //Kartın yanındaki gölge miktarı
      color: colorss().ColorsTexfieldback,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 500,
                    child: Text(
                      'Location',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 500,
                      child: Row(
                        children: [
                          Icon(Icons.location_pin),
                          Text(
                            ' 51 st,NY,USA',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize:
                                    20), //burda yaptığımız iconun yanına text gelebilmesi için sadece row yapıp childiren mi açmamız lazım yoksa Icon companentinin bir özelliği var mı bunla ilgili.
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              style: BorderStyle
                                  .solid))), //çubuğun nasıl beyaz olacağını sor.
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_searching),
                  )))
        ],
      ),
    );
  }
}
