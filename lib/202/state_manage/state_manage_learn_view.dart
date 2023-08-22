import 'package:flutter/material.dart';
import 'package:kurs/202/state_manage/state_learn_ViewModel.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeLoading();
          //yaptığımız şey logic işlemi yani ekran yönetimi
        },
      ),
      appBar: AppBar(
        backgroundColor: isVisible ? Colors.red : Colors.green,
        shadowColor: isOpacitiy ? Colors.amber : Colors.grey,
      ),
    );
  }
}
