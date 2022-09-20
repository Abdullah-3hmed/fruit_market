import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/components/components.dart';
import 'package:get/get.dart';

import 'complete_information_screen.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(child:  SizedBox(),),
          Image.asset(
            'assets/images/logo.png',
            height: 200,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 40.0,
              color: Color(0xFF69A03A),
            ),
          ),
          const Expanded(child:  SizedBox(),),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: defaultButtonWithIcon(
                  onTap: () {
                    Get.to(()=>const CompleteInformationScreen(),
                      duration: const Duration(milliseconds: 500,),
                      transition: Transition.rightToLeft,
                    );
                  },
                  iconData: FontAwesomeIcons.googlePlusG,
                  color: const Color(0xFFDB3236),
                  text: 'Log in with',
                ),
              ),
              Flexible(
                flex: 1,
                child: defaultButtonWithIcon(
                  onTap: () {
                    Get.to(()=>const CompleteInformationScreen(),
                      duration: const Duration(milliseconds: 500,),
                      transition: Transition.rightToLeft,
                    );
                  },
                  iconData: FontAwesomeIcons.facebook,
                  color: const Color(0xFF4267B2),
                  text: 'Log in with',
                ),
              ),
            ],
          ),
       const Expanded(child:  SizedBox(),),
        ],
      ),
    );
  }
}
