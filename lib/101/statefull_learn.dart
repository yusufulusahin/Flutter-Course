import 'package:flutter/material.dart';

import '../202/product/counter_button.dart';

class StateFullLearn extends StatefulWidget {
  const StateFullLearn({super.key});

  @override
  State<StateFullLearn> createState() => _StateFullLearnState();
}

class _StateFullLearnState extends State<StateFullLearn> {
  int _countValue = 0;
  int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement == true) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _deincrementMethod()],
      ),
      body: Center(
        child: Column(
          children: [
            Text(_countValue.toString(),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.green)),
            Placeholder(),
            CounterHelloButton()
          ],
        ),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementMethod() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
