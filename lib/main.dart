import 'package:flutter/material.dart';
import 'package:rel/routes.dart';
import 'package:rel/screens/splash/splash_screen.dart';
import 'package:rel/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rica Clone',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,

      routes: routes,
    );
  }
}
