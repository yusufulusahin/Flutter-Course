import 'package:flutter/material.dart';

class Jeep_cj1_Learn extends StatelessWidget {
  const Jeep_cj1_Learn({super.key});
  final _run = 'Run';
  final _stop = 'Stop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: JeepPadding().jeePaddingHorizontal +
              JeepPadding().jeePaddingVertical.copyWith(top: 40),
          child: Column(
            children: [
              Card(
                color: JeepRenk.jeepColorR2,
                margin: JeepMargin().jeepMargin,
                child: SizedBox(
                  child: Image.asset("assets/Jeep-PNG-Images-HD.png"),
                ),
              ),
              _titleWidget(),
              Padding(
                padding: JeepPadding().jeePaddingVertical,
                child: _textWidget(
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: JeepRenk.jeepColorT, width: 1.4),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: SizedBox(
                      height: JeepButtonHight.JeepH1,
                      child: Center(
                          child: Text(
                        _run,
                        style: Theme.of(context).textTheme.headlineMedium,
                      )))),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    _stop,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: JeepRenk.jeepColorT),
                  )),
              SizedBox(
                height: 50,
              )
            ],
          )),
      backgroundColor: JeepRenk.jeepColorR,
      appBar: AppBar(
        backgroundColor: JeepRenk.jeepColor1,
      ),
    );
  }
}

class _textWidget extends StatelessWidget {
  const _textWidget({super.key, this.textAlign});
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      "This is mine fucki' car " * 6,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: JeepRenk.jeepColorT, fontWeight: FontWeight.w400),
    );
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: JeepPadding().jeePaddingVertical,
      child: Text(
        'Jeep CJ5',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: JeepRenk.jeepColorT, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class JeepRenk {
  static final Color jeepColor1 = Color(0xFFb10d0b);
  static final Color jeepColorR = Colors.white;
  static final Color jeepColorT = Colors.black;
  static final Color jeepColorR2 = Color.fromARGB(255, 163, 159, 159);
}

class JeepPadding {
  final EdgeInsets jeePaddingHorizontal = EdgeInsets.symmetric(horizontal: 20);

  final EdgeInsets jeePaddingVertical = EdgeInsets.symmetric(vertical: 10);
}

class JeepMargin {
  final EdgeInsets jeepMargin = EdgeInsets.symmetric(horizontal: 20);
}

class JeepButtonHight {
  static double JeepH1 = 50;
}

//