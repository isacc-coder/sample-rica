import 'package:flutter/material.dart';
import 'package:rel/screens/sign_in/sign_in_screen.dart';
import 'package:rel/screens/sign_up/sign_up_screen.dart';

import '../../../constaint.dart';
import '../../../size_config.dart';

class Bord extends StatelessWidget {
  const Bord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Text(
              "Get Moving with RicaTrip",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50, right: 3),
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),

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
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
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
          //  Expanded(child:)
        ],
      ),
    );

    //SizedBox(
    //   width: double.infinity,

    //     child: Column(
    //       children: <Widget>[

    //         Text(
    //                     "Get Moving with RicaTrip",
    //                     style: TextStyle(
    //                       fontSize: getProportionateScreenWidth(16),
    //                       color: Colors.black,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //       ],
    //     ),
    //              Spacer(
    //                  flex: 1,
    //                ),
    //               Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       Padding(
    //                         padding: EdgeInsets.only(top: 50, right: 3),
    //                         child: OutlinedButton(
    //                           style: ElevatedButton.styleFrom(
    //                             primary: Colors.red,
    //                           ),

    //                           onPressed: () {
    //                             Navigator.pushNamed(context, SignUpScreen.routeName);
    //                           },
    //                           child: Text(
    //                             'REGISTER',
    //                             style: TextStyle(color: Colors.black),
    //                           ),

    //                           // text: "Continue",
    //                           // press: () {
    //                           //   Navigator.pushNamed(context, SignUpScreen.routeName);
    //                           // },
    //                         ),
    //                       ),
    //                       //Spacer(flex: 3),
    //                       Padding(
    //                         padding: EdgeInsets.only(top: 50, left: 3),
    //                         child: OutlinedButton(
    //                           style: ElevatedButton.styleFrom(
    //                             primary: Colors.red,
    //                           ),
    //                           onPressed: () {
    //                             Navigator.pushNamed(context, SignInScreen.routeName);
    //                           },
    //                           child: Text(
    //                             'SIGN IN',
    //                             style: TextStyle(color: Colors.black),
    //                           ),
    //                           // text: "Register",
    //                           // press: () {
    //                           //   Navigator.pushNamed(context, SignInScreen.routeName);
    //                           // },
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),

    // );
  }
}
