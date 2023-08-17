import 'package:flutter/material.dart';

import 'navigate_detail_learn.dart';

//dataların aktarıldığı kısım.

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () async {
                final response = await navigateToWidgetNormal<bool>(
                    context, const NavigateLearnDart());
                if (response == true) {
                  addSelected(index);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Placeholder(
                  color:
                      selectedItems.contains(index) ? Colors.green : Colors.red,
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.navigate_next_rounded),
            onPressed: () async {
              //await ve async eklememizdeki neden geriye değer yollayabilmemeizden sebep BİR DAHA BAK ARAŞTIR.

              final response = await navigateToWidgetNormal<bool>(
                  context, const NavigateLearnDart());
              if (response ==
                  true) {} //sayfa geri gelirken yakalayamıyoruz bir şeye reakisyon verirken yakalayabiliyoruz.
            }));
  }
}

mixin NavigatorManager {
  //constructorsuz bir class oluşturmak için mixin bir nevi interface, with ile kazandırdık navigatormanageri
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        // fullscreenDialog:
        //     true, //hem aşağıdan yukarıya açılıyor hemde,sol yukarıda çarpı ile geri dönebilmemizi sağlıyor.
        settings:
            const RouteSettings() //bir argumant vererek isim veya bir şey o sayfaya gitmemizi sağlıyor.

        ));
  }
}
Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T?>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings()));
}
