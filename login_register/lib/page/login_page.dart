import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerheight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerheight,
              child: HeaderWidget(_headerheight, true, Icons.login_rounded),
            ),
            SafeArea(child: 
            Container(//vai ser o form de login
                child: Column(
                  children: [
                    Text('Hello',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)
                    ),
                    SizedBox(height: 30.0,),
                    Form(
                      key: _formKey,
                      child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(labelText: 'User Name', hintText: 'Enter your username', fillColor: Colors.white, filled: true),
                            ),
                            SizedBox()
                          ],
                      ) 
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
