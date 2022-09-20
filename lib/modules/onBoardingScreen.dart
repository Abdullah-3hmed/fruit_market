import 'package:flutter/material.dart';
import 'package:fruit_market/components/components.dart';
import 'package:fruit_market/components/constants.dart';
import 'package:fruit_market/models/size_config.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var boardController = PageController();
    SizeConfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: boardController,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            children: [
              buildPageViewItem(
                image: 'assets/images/onboarding1.png',
                title: 'E Shopping',
                description: 'Explore top organic fruits &  grab them',
              ),
              buildPageViewItem(
                image: 'assets/images/onboarding2.png',
                title: 'Delivery on the way',
                description: 'Get your order by speed delivery',
              ),
              buildPageViewItem(
                image: 'assets/images/onboarding3.png',
                title: 'Delivery Arrived',
                description: 'Order is arrived at your place',
              ),
            ],
          ),
          Positioned(
            left: 140,
            bottom: 200,
            child: SmoothPageIndicator(
              controller: boardController,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: primaryColor,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 5.0,
                expansionFactor: 4,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Visibility(
              visible: pageIndex == 2 ? false : true,
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xFF898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: defaultButton(
                text: pageIndex == 2 ? 'Get Started' : 'Next',
                onTap: () {
                  if (pageIndex < 2) {
                    boardController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  } else {
                    Get.to(
                      () => const LoginView(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
