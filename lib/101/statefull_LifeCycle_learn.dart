import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.mesaj});

  final String mesaj;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  late bool _isOdd =
      false; //constructor anında değerini alacak dersek late veririz.
  String _mesaj = ' ';

  void initState() {
    _mesaj = widget.mesaj;
    _isOdd = widget.mesaj.length.isOdd;
    print('a');
    super
        .initState(); //stf widgetler çizilmeye başlamadan önce başlayıp aslında çizilmeden önce biten companentlerdir.
    _computeName();
  }
  //initstate bittikten sonra mesaj zaten hazırlanmış oluyor bu yüzden setstate'ye gerek yok.

  void _computeName() {
    if (_isOdd) {
      _mesaj += ' Tek';
    } else {
      _mesaj += ' Çift';
    }
  }

  @override
  void didChangeDependencies() {
    //initstateden sonra çalışır
    //drawdan önce çalışır.
    print('b');

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('c');
  }

  @override
  void dispose() {
    print('Alo');
    super.dispose();
  }
  //sayfadan çıktığı andır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _isOdd //tek isEven : çift
              ? const Text('Kelime Tek')
              : const Text('Kelime Çift'),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_mesaj))
            : ElevatedButton(onPressed: () {}, child: Text(_mesaj)));
  }
}

//initState bak