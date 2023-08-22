import 'package:flutter/material.dart';

class FormLearnViewDart extends StatefulWidget {
  const FormLearnViewDart({super.key});

  @override
  State<FormLearnViewDart> createState() => _FormLearnViewDartState();
}

GlobalKey<FormState> _key = GlobalKey();

class _FormLearnViewDartState extends State<FormLearnViewDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _key,
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('save'))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMEssage._notEmpty;
  }
}

class ValidatorMEssage {
  static const String _notEmpty = 'Burası Boş Geçilemez';
}
