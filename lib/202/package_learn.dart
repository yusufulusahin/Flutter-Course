import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kurs/202/Package/Launch_manager.dart';
import 'package:kurs/202/Package/Loading_Bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  var urll = Uri.parse('https://pub.dev/packages/chewie');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchUrl(urll);
        },
      ),
      body: Column(
        children: [
          Text(
            'a',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          LoadingBar(),
        ],
      ),
    );
  }
}
