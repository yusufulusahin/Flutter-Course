import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: title,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomFoodButton(
            title: title,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function()
      onPressed; // => bir fonksiyonun dışarı alınması böyle yapılır.
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: _colorUtility.redColor,
          shape: StadiumBorder(),
        ),
        onPressed: onPressed,
        child: Text(title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: _colorUtility.whiteColor, fontWeight: FontWeight.bold)));
  }
}

class _colorUtility {
  static final Color redColor = Colors.red;
  static final Color whiteColor = Colors.white;
}
