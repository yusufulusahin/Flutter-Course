import 'package:flutter/material.dart';
import 'package:kurs/202/cache/shared_manage_learn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends State<SharedLearn> {
  int _currentValue = 0;
  bool _isLoading = false;
  late final SharedManager _manager;

  void _changeLoading() {
    _isLoading = !_isLoading;
  }

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
  }

  Future<void> initialzee() async {
    _changeLoading();
    await _manager.init();
    _changeLoading();
    _getDefaultValue();
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_saveButton(), _removeButton()],
      ),
      appBar: AppBar(
        actions: [
          _isLoading
              ? const CircularProgressIndicator()
              : const SizedBox.shrink()
        ],
        title: Text(_currentValue.toString()),
      ),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }

  FloatingActionButton _saveButton() {
    return FloatingActionButton(
      onPressed: () async {
        _manager.saveString(SharedKeys.counter, _currentValue.toString());
      },
      child: const Icon(Icons.save),
    );
  }

  FloatingActionButton _removeButton() {
    return FloatingActionButton(
      onPressed: () async {
        _manager.removeString(SharedKeys.counter);
      },
      child: Icon(Icons.remove),
    );
  }

  Future<void> _getDefaultValue() async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // final int? counter = prefs.getInt('counter');
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }
}
