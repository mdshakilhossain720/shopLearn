
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/welcome_notifier.dart';
import 'widgets/widgets.dart';



class Welcome extends ConsumerWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final PageController _controller = PageController();

    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  onPageChanged: (value){
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    appOnboardingPage(_controller,
                        imagePath: "assets/images/reading.png",
                        title: "First See Learning",
                        subtitle:
                            "Forget about of paper all knowledge in one learning",
                        index: 1),
                    appOnboardingPage(_controller,
                        imagePath: "assets/images/man.png",
                        title: "Connect With Everyone",
                        subtitle:
                            "Always keep in touch with your tutor and friends. Let's get connected",
                        index: 2),
                    appOnboardingPage(_controller,
                        imagePath: "assets/images/boy.png",
                        title: "Always Fascinated Learning",
                        subtitle:
                            "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                        index: 3),
                  ],
                ),
            Positioned(
              bottom: 10,
              child: DotsIndicator(
                position: index.toDouble(),
                dotsCount: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(24.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),

            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
