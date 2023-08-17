import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late List<CollectionModel>
      _items; //late verirsek bu değer bir daha değişmeyecek sadece constructor anında alınacak.
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtilty().listViewPadding,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtilty().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtilty().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: PaddingUtilty().paddingTop,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(_model.title), Text('${_model.price} eth')],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtilty {
  final paddingTop = const EdgeInsets.only(top: 20.0);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final listViewPadding = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: 'assets/ayder.jpeg', title: 'Ayder', price: 3.4),
      CollectionModel(
          imagePath: 'assets/ayder1.jpeg', title: 'Ayder1', price: 3.4),
      CollectionModel(
          imagePath: 'assets/ayder2.jpeg', title: 'Ayder2', price: 3.4),
      CollectionModel(
          imagePath: 'assets/ayder3.jpeg', title: 'Ayder3', price: 3.4),
    ];
  }
}
