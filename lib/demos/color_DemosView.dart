import 'package:flutter/material.dart';
//Bir ekran olacak
//Bu ekranda 3 button ve bunlara basinca renk degisimi olacak
//secili olan button selected icon olsun

class ColorsViewDemos extends StatefulWidget {
  const ColorsViewDemos({super.key, required this.initialColor});
  final Color?
      initialColor; //her sayfa null olup olmadığını kontrol etmesin en üstteki etsin diye böyle yaptık.
  @override
  State<ColorsViewDemos> createState() => _ColorsViewDemosState();
}

class _ColorsViewDemosState extends State<ColorsViewDemos> {
  Color? _backgroundC;
  @override
  void initState() {
    _backgroundC = widget.initialColor ?? Colors.transparent;
    super.initState();
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundC = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorsViewDemos oldWidget) {
    if (oldWidget.initialColor != widget.initialColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundC,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value);
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.red);
            } else if (value == _MyColors.yellow.index) {
              changeBackgroundColor(Colors.yellow);
            } else if (value == _MyColors.blue.index) {
              changeBackgroundColor(Colors.blue);
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  width: 10,
                  height: 10,
                ),
                label: 'Red'),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 10,
                  height: 10,
                ),
                label: 'yellow'),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 10,
                  height: 10,
                ),
                label: 'blue'),
          ]),
    );
  }
}

enum _MyColors { red, yellow, blue }
