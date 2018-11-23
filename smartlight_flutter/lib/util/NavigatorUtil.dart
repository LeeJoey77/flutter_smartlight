import 'package:flutter/material.dart';
import 'package:smartlight_flutter/page/QRCodePage.dart';
import 'package:smartlight_flutter/page/LogInPage.dart';
import 'package:smartlight_flutter/page/LightDetailPage.dart';
import 'package:smartlight_flutter/page/ModifyPlanPage.dart';
import 'package:smartlight_flutter/page/MainTabBarPage.dart';

class NavigatorUtil {
  
  static gotoScanQrPage(BuildContext context) {
     Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return QRCodePage();
      }));
  }

  static gotoLogInPage(BuildContext context) {
    //push 并关闭之前所有的界面
    Navigator.of(context).pushReplacementNamed(LogInPage.sName);
  }

  static gotoHomePage(BuildContext context) {
    //push 并关闭之前所有的界面
    Navigator.of(context).pushReplacementNamed(MainTabBarPage.sName);
  }

  static gotoLightDetailPage(BuildContext context) {
    Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return LightDetailPage();
      }));
  }

  static gotoModifyPlanPage(BuildContext context) {
    Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return ModifyPlanPage();
      }));
  }
}