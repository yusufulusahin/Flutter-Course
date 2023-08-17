import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Build Metodunun içinde ekranları geliştiririz.

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(
            title: 'Yetkin',
          ),
          TitleText(
            title: 'Kemal',
          ),
          TitleText(title: 'Yusuf'),
          TitleText(title: 'Hatice'),
          _CustomContainerWidget(), // "_" amacı private yapmak ve sadece bu dosyadan erişilebilmek.
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class _CustomContainerWidget extends StatelessWidget {
  const _CustomContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.lime),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title});

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
