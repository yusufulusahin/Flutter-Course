import 'package:flutter/material.dart';

import '../101/icon_Learn.dart';
import '../101/image_Learn.dart';

class Tablearn extends StatefulWidget {
  const Tablearn({super.key});

  @override
  State<Tablearn> createState() => _TablearnState();
}

class _TablearnState extends State<Tablearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double _notchedValue = 10;
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            shape: const CircularNotchedRectangle(),
            child: _myTab(),
          ),
          appBar: AppBar(),
          body: _tabBarView(),
        ));
  }

  TabBar _myTab() {
    return TabBar(
        // isScrollable: true, //sıkıştırmayı sağlıyor
        controller: _tabController,
        onTap: (int index) {},
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(controller: _tabController, children: [
      ImageLearn(),
      IconLearnView(),
      IconLearnView(),
      IconLearnView(),
    ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {
  //dart kursundan extensionsa bak
}
