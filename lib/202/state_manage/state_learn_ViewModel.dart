import 'package:flutter/cupertino.dart';
import 'package:kurs/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  bool isVisible = false;
  bool isOpacitiy = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeLoading() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacitiy() {
    setState(() {
      isOpacitiy = !isOpacitiy;
    });
  }
}
