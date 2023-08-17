import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/object.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              shape: CardSettings._cardShapeSetting,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () => {} //tıklandığında ne olacağını belirliyor
                  ,
                  title: Text('My Cars'),
                  subtitle: Text('How do you use your card'),
                  minVerticalPadding: 0,
                  dense: true,
                  leading: Icon(Icons.toys) //solu için leading verilir.
                  ,
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),
            Card(
              shape: CardSettings._cardShapeSetting,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () => {},
                  title: SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/Jeep-PNG-Images-HD.png",
                      )),
                  dense: true,
                  leading: Container(
                    height: 100,
                    width: 30,
                    alignment: Alignment.bottomCenter,
                    child: const Icon(
                      Icons.car_repair,
                    ),
                  ),
                  subtitle: const Text(
                    'Click And Repair',
                    textAlign: TextAlign.center,
                  ),
                  trailing: Container(
                      height: 100,
                      width: 30,
                      alignment: Alignment.bottomCenter,
                      child: const Icon(Icons.chevron_right)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Bu companent bir ürünü alt alta listelemek veya bir menü oluşturmaj gibi
// Bir companentin nerelere yerleşebileceğini görmek istiyorsak onu container ile sarmalayıp color atarsak kapladığı alanı görebiliriz

class CardSettings {
  static final _cardShapeSetting =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(35));
}
