import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> {
  bool _isVisible = false;

  void _changeLoading() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeLoading();
        },
      ),
      body: AnimatedCrossFade(
          firstChild: const Placeholder(),
          secondChild: const SizedBox.shrink(),
          crossFadeState:
              _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: _AnimatedDuration._durationLow),
      // body: _isVisible ? Placeholder() : null,
    );
  }
}

class _AnimatedDuration {
  static const _durationLow = Duration(seconds: 1);
}
