import 'package:flutter/material.dart';
import 'package:flutterhub/login_with_github.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterHub"),
      ),
      body: Center(
        child: LoginWithGithub(
          onPressedEvent: () {
            Navigator.pushNamed(context, "main");
          },
        ),
      ),
    );
  }
}
