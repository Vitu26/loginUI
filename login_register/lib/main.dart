import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_register/page/splash_screem.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  // const LoginApp({super.key});
  Color _primaryColor = HexColor('#DC54FE');
  Color _accentColor = HexColor('#BAO2AE');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _primaryColor,
        hintColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreem(title: 'Flutter Login UI'),
    );
  }
}
