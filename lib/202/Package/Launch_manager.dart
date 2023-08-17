import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  //burda on dersek bunu sınırlandırırız. kullanım alanını kısıtlarız.
  Future<void> launchUrl(url) async {
    if (await canLaunchUrl(url)) {
      // canlaunch mevzusu eğer ki url gerçekten gidilebilen bir şeyse komutu çalıştır anlamına geliyor.
      await launchUrl(url);
    }
  }
}
