import 'package:flutter/material.dart';
import '../../common/widgets/app_shadow.dart';
import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage(PageController controller,
    {String imagePath = '',
    String title = '',
    String subTitle = '',
    int index = 0}) {
  return Column(
    children: <Widget>[
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      // Image.asset('assets/images/boy.png'),
      // Image.asset('assets/images/reading.png'),
      Container(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: text24Normal(text: title)),
      Container(
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: text16Normal(text: subTitle)),
      _nextButton(index, controller)
    ],
  );
}

// _がついている関数 = このファイルでのみ定義される関数のことを表す
Widget _nextButton(int index, PageController controller) {
  return GestureDetector(
      onTap: () {
        if (index < 3) {
          controller.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.bounceIn);
        }
      },
      child: Container(
          decoration: appBoxShadow(),
          width: 325,
          height: 50,
          margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
          child: Center(
            child: text16Normal(text: '次へ', color: Colors.white),
          )));
}
