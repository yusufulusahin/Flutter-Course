import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool _isVisible = false;
  bool _isOpacitiy = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: _AnimatedDuration._durationLow);
  }

  void _changeLoading() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacitiy() {
    setState(() {
      _isOpacitiy = !_isOpacitiy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _AnimatedWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _changeLoading();

            controller.animateTo(_isVisible ? 1 : 0);
          },
        ),
        body: Column(
          children: [
            ListTile(
                title: AnimatedOpacity(
                    duration: _AnimatedDuration._durationLow,
                    opacity: _isOpacitiy ? 1 : 0,
                    child: const Text('data')),
                trailing: IconButton(
                    onPressed: () {
                      _changeOpacitiy();
                    },
                    icon: const Icon(Icons.arrow_back))),
            AnimatedDefaultTextStyle(
                child: const Text('data'),
                style: (_isVisible
                        ? Theme.of(context).textTheme.displayLarge
                        : Theme.of(context).textTheme.headlineSmall) ??
                    const TextStyle(),
                duration: _AnimatedDuration._durationLow),
            AnimatedIcon(icon: AnimatedIcons.close_menu, progress: controller),
            AnimatedContainer(
              duration: _AnimatedDuration._durationLow,
              height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
              color: Colors.red,
            ),
            const Stack(
              children: [
                AnimatedPositioned(
                    curve: Curves.bounceOut,
                    child: Text('data'),
                    duration: _AnimatedDuration._durationLow)
              ],
            ),
            Expanded(
              child: AnimatedList(
                itemBuilder: (context, index, animation) {
                  return const Text('data');
                },
              ),
            )
          ],
        )
        // body: _isVisible ? Placeholder() : null,
        );
  }

  AnimatedCrossFade _AnimatedWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: _AnimatedDuration._durationLow,
    );
  }
}

class _AnimatedDuration {
  static const _durationLow = Duration(seconds: 1);
}
