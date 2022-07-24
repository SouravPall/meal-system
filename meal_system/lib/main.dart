import 'package:flutter/material.dart';
import 'package:meal_system/pages/login_page.dart';
import 'package:meal_system/pages/signin_page.dart';

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
      title: 'Meal System',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: LogInPage.routeName,
      routes: {
        LogInPage.routeName : (context) => LogInPage(),
        SignInPage.routeName : (context) => SignInPage(),
      },
    );
  }
}


