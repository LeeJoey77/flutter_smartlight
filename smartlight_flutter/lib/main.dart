import 'package:flutter/material.dart';
import 'package:smartlight_flutter/page/MainTabBarPage.dart';
import 'package:smartlight_flutter/page/HomePage.dart';
import 'package:smartlight_flutter/page/LogInPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        MainTabBarPage.sName: (context) => MainTabBarPage(),
        LogInPage.sName: (context) => LogInPage()
      },
    );
  }
}

