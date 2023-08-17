import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(padding: EdgeInsets.zero, children: [
        FittedBox(
          child: Text('Merhaba',
              style: Theme.of(context).textTheme.displayLarge, maxLines: 1),
        ),
        Container(height: 300, color: Colors.red),
        const Divider(),
        SizedBox(
            height: 300,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(width: 100, color: Colors.blue),
              Container(width: 100, color: Colors.green),
              Container(width: 100, color: Colors.blue),
              Container(width: 100, color: Colors.green),
              Container(width: 100, color: Colors.blue),
              Container(width: 100, color: Colors.green)
            ])),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        const _ListDemos()
      ]),
    );
  }
}

class _ListDemos extends StatefulWidget {
  const _ListDemos({super.key});

  @override
  State<_ListDemos> createState() => __ListDemosState();
}

class __ListDemosState extends State<_ListDemos> {
  @override
  void initState() {
    super.initState();
    print("hello");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
