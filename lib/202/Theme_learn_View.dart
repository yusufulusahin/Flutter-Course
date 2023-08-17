import 'package:flutter/material.dart';
import 'package:kurs/101/Text_Field.learn.dart';
import 'package:kurs/demos/password_texfield.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PasswordTextField(),
          CheckboxListTile(
              value: true, onChanged: (value) {}, title: Text('selected'))
        ],
      ),
    );
  }
}
