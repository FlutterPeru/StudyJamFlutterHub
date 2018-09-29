import 'package:flutter/material.dart';
import 'package:flutterhub/home_screen.dart';
import 'package:flutterhub/login_screen.dart';
import 'package:flutterhub/login_with_github.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/' : (context) => LoginScreen(),
        'main' : (context) => HomeScreen(),
      },
      initialRoute: "/",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
