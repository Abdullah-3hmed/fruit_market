import 'package:flutter/material.dart';
import 'package:fruit_market/widgets/splach_view_body.dart';

import '../components/constants.dart';



class SplashView extends StatelessWidget{
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     backgroundColor: primaryColor,
     body: const SplashViewBody(),
   );
  }

}