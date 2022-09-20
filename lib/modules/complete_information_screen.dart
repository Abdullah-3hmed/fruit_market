import 'package:flutter/material.dart';

import '../components/components.dart';

class CompleteInformationScreen extends StatelessWidget {
  const CompleteInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const SizedBox(height:70,),
              buildCompleteInfoItem(
                text: 'Enter your name',
                keyboardType: TextInputType.text,
              ),
              buildCompleteInfoItem(
                text: 'Enter your phone number',
                keyboardType: TextInputType.number,
              ),
              buildCompleteInfoItem(
                text: 'Enter your address',
                keyboardType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(height: 10,),
              defaultButton(
                text: 'Login',
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
