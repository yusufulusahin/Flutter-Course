import 'package:flutter/material.dart';

class WidgetSizesEnumLearnView extends StatefulWidget {
  const WidgetSizesEnumLearnView({super.key});

  @override
  State<WidgetSizesEnumLearnView> createState() =>
      _WidgetSizesEnumLearnViewState();
}

class _WidgetSizesEnumLearnViewState extends State<WidgetSizesEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.green,
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileCard }

extension WidgetSizeExtensions on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;

      case WidgetSizes.circleProfileCard:
        return 25;
    }
  }
}
