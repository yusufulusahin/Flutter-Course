import 'package:flutter/material.dart';

import 'language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  //içinde küçük bir değişiklik veya bir hayat var o yüzden stateless den statefull a geçtik.
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  final String _hello = LanguageItems.welcomeTitle;

  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _updateCounter();
        },
        child: Text('$_hello $_counterCustom'));
  }
}

//böyle yaptığımız için burda "burda" hiç çağırılmayacak.

