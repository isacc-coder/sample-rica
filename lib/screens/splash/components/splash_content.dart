import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constaint.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/Re.jpeg',
          height: getProportionateScreenHeight(165),
          width: getProportionateScreenWidth(75),
          //color: Color(0xffF2861E),
        ),
        // Text(
        //   "Trip",
        //   style: TextStyle(
        //     fontSize: getProportionateScreenWidth(36),
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),

        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(135),
          width: getProportionateScreenWidth(105),
          alignment: Alignment.bottomCenter,
          color: Colors.white,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16), color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
