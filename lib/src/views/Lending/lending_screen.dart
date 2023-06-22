import 'package:flutter/material.dart';
import 'package:flutter_bloc_state/src/common/constants/app_constant.dart';
import 'package:flutter_bloc_state/src/methods/export_providers.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = 'onboarding-screen';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnboardingProvider>(
        builder: (context, onboardingNotifier, child) {
          return Stack(
            children: [
              PageView(
                physics: onboardingNotifier.isLastPage
                    ? const NeverScrollableScrollPhysics()
                    : const AlwaysScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (page) {
                  onboardingNotifier.isLastPage = page == 2;
                },
                children: const [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
              Positioned(
                bottom: height * 0.12,
                left: 0,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: const Color.fromARGB(255, 216, 19, 19)
                          .withOpacity(0.5),
                      activeDotColor: Colors.lightBlue,
                      spacing: 10,
                    ),
                    controller: pageController,
                    count: 3,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
// flutter firebase node js mongodb DSA AI/ML