import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'Save',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.lime;
              }
              return Colors.yellow;
            })),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Savee'),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove_circle_outline,
              )),
          FloatingActionButton(
            onPressed: (
                //servise istek at
                //sayfanın rengini düzenle
                ) {},
            child: const Icon(Icons.read_more),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const SizedBox(
              child: const Text('saveee'),
              width: 200,
            ),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lime,
                padding: const EdgeInsets.all(10)),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('data')),
          InkWell(
            onTap: () {},
            child: Text('Tıkla'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
              child: Text('Place bid',
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          )
        ],
      ),
    );
  }
}

//Borders:
//CircleBorder(), RoundedRectangBorder()
