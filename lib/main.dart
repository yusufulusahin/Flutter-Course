import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kurs/202/theme/LighTema.dart';

import '202/Theme_learn_View.dart';
import '202/Widget_Size_Enum_Learn_view.dart';
import '202/animated_Learn_View.dart';
import '202/package_learn.dart';
import '202/services/service_learn_view.dart';
import '202/services/service_post_learn_view.dart';
import 'demos/jeep_demos_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LighTema().theme, //dark().copyWith(
      //     progressIndicatorTheme:
      //         const ProgressIndicatorThemeData(color: Colors.white),
      //     listTileTheme:
      //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     appBarTheme: const AppBarTheme(
      //       backgroundColor: Colors.transparent,
      //       centerTitle: true,
      //       elevation: 0,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //     ),
      //     tabBarTheme: const TabBarTheme(
      //         indicatorColor: Colors.white,
      //         unselectedLabelColor: Colors.green,
      //         indicatorSize: TabBarIndicatorSize.tab),
      //     cardTheme: const CardTheme(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(20)))),
      //     textSelectionTheme: const TextSelectionThemeData(
      //         selectionColor: Colors.red,
      //         cursorColor: Colors.green,
      //         selectionHandleColor: Colors.black),
      //     textTheme: const TextTheme(
      //         titleMedium:
      //             TextStyle(color: Colors.red)), //Text fiel içi yazma rengi
      //     inputDecorationTheme: const InputDecorationTheme(
      //         filled: true,
      //         fillColor: Colors.white,
      //         iconColor: Colors.red,
      //         labelStyle: TextStyle(color: Colors.black),
      //         border: OutlineInputBorder(),
      //         floatingLabelStyle: TextStyle(
      //             color: Colors.red,
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold))),
      home: AnimatedLearnView(),
    );
  }
}
