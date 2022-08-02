import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rel/screens/sign_in/sign_in_screen.dart';
import 'package:rel/screens/sign_up/sign_up_screen.dart';
import 'package:rel/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
