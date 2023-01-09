import 'package:flutter/material.dart';

import 'constant.dart';
import 'Login/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthX',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: primaryColor,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: primaryLightColor,
          iconColor: primaryColor,
          prefixIconColor: primaryColor,
          contentPadding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}