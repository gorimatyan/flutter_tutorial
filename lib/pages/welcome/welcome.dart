import 'package:flutter/material.dart';

import 'widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ↓ PageViewを操作するためのヤツ
    final PageController controller = PageController();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // PageView = 横もしくは縦にすいすいできるようにするWidget
          PageView(
              controller: controller,
              // ignore: avoid_redundant_argument_values
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                appOnboardingPage(controller,
                    imagePath: 'assets/images/reading.png',
                    title: '読書なう',
                    subTitle: '勤勉',
                    index: 1),
                appOnboardingPage(controller,
                    imagePath: 'assets/images/boy.png',
                    title: '太陽から落ちてもた！',
                    subTitle: '即死',
                    index: 2),
                appOnboardingPage(controller,
                    imagePath: 'assets/images/man.png',
                    title: 'イチャイチャしてやがるな\nこいつらきっしょいわ',
                    subTitle: '嫉妬',
                    index: 3),
              ]),
          const Positioned(
            bottom: 100,
            left: 20,
            child: Text('Widget One', style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
