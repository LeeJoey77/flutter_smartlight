import 'package:flutter/material.dart';
import 'package:smartlight_flutter/page/AboutPage.dart';
import 'package:smartlight_flutter/page/ChangePW.dart';
import 'package:smartlight_flutter/util/NavigatorUtil.dart';

class MinePage extends StatefulWidget {
  static final String sName = "fault";

  MinePage({Key key}) : super(key: key);
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  final leftPad = 25.0;
  final rightPad = 25.0;

  @override
  Widget build(BuildContext context) {
    final kScreenWidth = MediaQuery.of(context).size.width;
    final kAvatar_width = 75.0;
    const List<String> titleList = ['修改密码', '关于', '退出登录'];
    var pageList = [
      ChangePWPage(title: '修改密码'),
      AboutPage(
        title: '关于',
      )
    ];
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(
              'resource/planBackground@3x.png',
              width: kScreenWidth,
            ),
            Positioned(
                top: 70,
                left: (kScreenWidth - kAvatar_width) / 2,
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'resource/music1.jpeg',
                      width: kAvatar_width,
                      height: kAvatar_width,
                    ),
                  ),
                  radius: kAvatar_width / 2,
                )),
            Positioned.fromRect(
                rect: Rect.fromLTWH(
                    15, 80 + kAvatar_width, kScreenWidth - 30, 15),
                child: Center(
                  child: Text('智慧照明'),
                ))
          ],
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.account_box),
                title: Text('${titleList[index]}'),
                onTap: () {
                  if (index < titleList.length - 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pageList[index];
                    }));
                  } else {
                    NavigatorUtil.gotoLogInPage(context);
                  }
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return new Container(
                color: Colors.grey,
                height: 1,
              );
            },
            itemCount: titleList.length,
          ),
        )
      ],
    );
  }
}
