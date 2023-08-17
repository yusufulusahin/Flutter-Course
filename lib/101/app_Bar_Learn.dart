import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        toolbarTextStyle: const TextStyle(color: Colors.amber),
        automaticallyImplyLeading: false, //otomatik olarak back butonu gelmesin
        //actionsIconTheme: IconThemeData(color: Colors.lime, size: 30),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.mark_email_unread_sharp)),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
