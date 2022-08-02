import 'package:flutter/material.dart';
import 'package:rel/screens/sign_in/sign_in_screen.dart';
import 'package:rel/screens/sign_up/sign_up_screen.dart';
import 'package:rel/screens/splash/components/splash_content.dart';

import '../../../components/default_button.dart';
import '../../../constaint.dart';
import '../../../size_config.dart';
import '../../sign_in/components/sing_form.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      "image": "assets/images/guest.png",
      "text": "Book a Trip\n Your personal e-haliling experiecne with us",
    },
    {
      "image": "assets/images/cutlery.png",
      "text":
          "Food Delivery\n Order your food and get it delivered to you wherever you\n are.",
    },
    {
      "image": "assets/images/delivery-service.png",
      "text":
          "Package Delivery\n we help you delver package, merchndize or douctument to your recipeint",
    },
    {
      "image": "assets/images/groceries.png",
      "text":
          "Groceries Delivery\n Order your grocery and get it delivered to you wherever you are.",
    },
    {
      "image": "assets/images/groceries.png",
      "text":
          "Medicines Delivery\n Oreder your medicines and get it delivered to you wherever you are",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  initwidget() {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0)),
              color: Color.fromRGBO(248, 148, 34, 1),
              gradient: LinearGradient(
                colors: [
                  (new Color.fromRGBO(248, 148, 34, 1)),
                  new Color.fromRGBO(248, 148, 34, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(children: [
              Expanded(
                  flex: 2,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]['text'],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Column(children: <Widget>[
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                      ])))
            ]),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Get Moving with RicaTrip",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50, right: 3),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(180, 40),
                            primary: Color.fromRGBO(248, 148, 34, 1),
                            side: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(248, 148, 34, 1))),

                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.routeName);
                        },
                        child: Text(
                          'REGISTER',
                          style: TextStyle(color: Colors.black),
                        ),

                        //               //                           // text: "Continue",
                        //               //                           // press: () {
                        //               //                           //   Navigator.pushNamed(context, SignUpScreen.routeName);
                        //               //                           // },
                      ),
                    ),
                    //           //                       //Spacer(flex: 3),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 40),
                          primary: (new Color.fromRGBO(248, 148, 34, 1)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.black),
                        ),
                        //               //                           // text: "Register",
                        //               //                           // press: () {
                        //               //                           //   Navigator.pushNamed(context, SignInScreen.routeName);
                        //               //                           // },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
    //   return SizedBox(
    //   width: double.infinity,
    //   child: Container(
    //     height: 300,
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.only(bottomLeft: Radius.zero),
    //         color: kPrimaryColor,
    //         gradient: LinearGradient(
    //           colors: [(kPrimaryColor)],
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //         )),
    //     child: Column(children: <Widget>[
    //       Expanded(
    //           flex: 3,
    //           child: PageView.builder(
    //             onPageChanged: (value) {
    //               setState(() {
    //                 currentPage = value;
    //               });
    //             },
    //             itemCount: splashData.length,
    //             itemBuilder: (context, index) => SplashContent(
    //               text: splashData[index]['text'],
    //               image: splashData[index]["image"],
    //             ),
    //           )),
    //       Expanded(
    //         flex: 2,
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(
    //               horizontal: getProportionateScreenWidth(20)),
    //           child: Column(
    //             children: <Widget>[
    //               Spacer(),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: List.generate(
    //                   splashData.length,
    //                   (index) => buildDot(index: index),
    //                 ),
    //               ),
    //               Spacer(
    //                 flex: 1,
    //               ),
    //               //
    //               Spacer(),
    //             ],
    //           ),
    //         ),
    //       )
    //     ]),
    //   ),
    // );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDutaiton,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
