import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 20,
          buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) =>
              _animatedContainer(currentLength),
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          inputFormatters: [],
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              prefix: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.mail, color: Colors.blue)),
              border: OutlineInputBorder(),
              labelText: 'Mail'),
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 90),
        height: 4,
        width: 20.0 * (currentLength ?? 0),
        color: Colors.green);
  }
}
