
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              appOnboardingPage(imagePath:"assets/images/reading.png",title: "First See Learning",subtitle: "Forget about of paper all knowledge in one learning"),
              appOnboardingPage(imagePath:"assets/images/man.png",title: "Connect With Everyone",subtitle: "Always keep in touch with your tutor and friends. Let's get connected"),
              appOnboardingPage(imagePath:"assets/images/boy.png",title: "Always Fascinated Learning",subtitle: "Anywhere, anytime. The time is at your discretion. So study wherever you can"),
            ],
          ),
          Positioned(
            child: Text(""),
            bottom: 100,
            left: 20,
          ),
        ],
      ),
    );
  }
}
