import 'package:flutter/material.dart';
import 'package:smartlight_flutter/page/HomePage.dart';
import 'package:smartlight_flutter/page/PlanPage.dart';
import 'package:smartlight_flutter/page/FaultPage.dart';
import 'package:smartlight_flutter/page/StatisticPage.dart';
import 'package:smartlight_flutter/page/MinePage.dart';
import 'package:smartlight_flutter/page/LogInPage.dart';

class MainTabBarPage extends StatefulWidget {
  static final String sName = "/";

  MainTabBarPage({ Key key }) : super(key: key);
  @override
  _MainTabBarPageState createState() => _MainTabBarPageState();
}

class _MainTabBarPageState extends State<MainTabBarPage> {

  var _currentIndex = 0;
  void _tapTabbarItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final kScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: _createHomeBody(_currentIndex, context),
        bottomNavigationBar:
            _createBottomNavigationBars(_currentIndex, _tapTabbarItem),
        backgroundColor: Colors.white,
      );
  }

  Widget _createHomeBody(int index, BuildContext context) {
  switch (index) {
    case 0:
      return MyHomePage();
      break;
    case 1:
      return PlanPage();
      break;
    case 2:
      return FaultPage();
      break;
    case 3:
      return StatisticPage();
      break;
    case 4:
      return MinePage();
      break;
  }
}

Widget _createBottomNavigationBars(int index, ValueChanged<int> onChanged) {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: Text('首页'),
        backgroundColor: Colors.white,
        // activeIcon: new Icon(Icons.fastfood),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.schedule),
        title: Text('计划'),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.warning),
        title: Text('故障'),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.format_list_numbered),
        title: Text('统计'),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.adb),
        title: Text('我的'),
      )
    ],
    onTap: onChanged,
    currentIndex: index,
    iconSize: 30,
    type: BottomNavigationBarType.fixed,
  );
}

}

