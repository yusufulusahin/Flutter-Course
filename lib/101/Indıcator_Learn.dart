import 'package:flutter/material.dart';

class IndicatorLe extends StatelessWidget {
  const IndicatorLe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterCircularProgress()],
      ),
      body: LinearProgressIndicator(),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      strokeWidth: 8, //Bold luk katıyor.
      // value değeri durdurur ve sabit tutar.
      //eğer buraya color verirsek sadece burayı etkiler mesela Red yapacaksak sonucunde CenterRedCircularProgress diye değişmemiz lazımdı.
    ));
  }
}

//Loading Bar
