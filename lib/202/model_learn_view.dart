import 'package:flutter/material.dart';

import 'model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  @override
  void initState() {
    super.initState();

    final user1 = PostModel5()
      ..userID = 1
      ..id = 2
      ..title = 'selam';
    user1.body = 'Hello';

    final user2 = PostModel2(1, 2, 'b', 'a');
    user2.body = 'c'; //final olsaydı atayamazdık.
  }

  final user3 = PostModel3(userID: 1, id: 2, title: 'title', body: 'body');
  var user4 = PostModelFav(
      body:
          'a'); //var yapmamızdaki neden değişebilir bir değer oluşturmak istememiz.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            user4.body ?? ''), //?? '' koymamızdaki neden nullable olabilir.
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user4 = PostModelFav(body: 'on pressed');
          });
        },
      ),
    );
  }
}
