import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;

  void _visibility() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isSecure,
      obscuringCharacter: '#',
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      decoration:
          InputDecoration(hintText: 'password', suffix: _onVisibility()),
    );
  }

  IconButton _onVisibility() {
    return IconButton(
      onPressed: () {
        _visibility();
      },
      icon: AnimatedCrossFade(
          firstChild: Icon(Icons.visibility_outlined),
          secondChild: Icon(Icons.visibility_off_outlined),
          crossFadeState:
              _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 3)),
    );
    //Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}
