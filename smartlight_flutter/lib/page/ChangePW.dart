import 'package:flutter/material.dart';
import 'package:smartlight_flutter/widget/SLChangePWInputView.dart';
import 'package:smartlight_flutter/util/CommonUtil.dart';

class ChangePWPage extends StatefulWidget {
  static final String sName = "changePW";
  String title;
  ChangePWPage({ Key key, this.title }) : super(key: key);
  @override
  _ChangePWPageState createState() => _ChangePWPageState();
}

class _ChangePWPageState extends State<ChangePWPage> {

  final leftPad = 25.0;
  final rightPad = 25.0;
  //用做存储的属性, 不能放在 build 方法里
  var _originPW = '';
  var _newPW = '';
  var _repeatPW = '';

  final TextEditingController _originPWController = TextEditingController();
  final TextEditingController _newPWController = TextEditingController();
  final TextEditingController _repeatPWController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final kScreenWidth = MediaQuery.of(context).size.width;

    final inputField = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SLChangePWInputView(
          controller: _originPWController,
          hintText: '请输入原密码',
          title: '原  密  码',
          onChanged: (value) {
            _originPW = value;
          },
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        SLChangePWInputView(
          controller: _newPWController,
          hintText: '请输入新密码',
          title: '新  密  码',
          onChanged: (value) { 
            _newPW = value;
          },
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        SLChangePWInputView(
          controller: _repeatPWController,
          hintText: '请再次输入新密码',
          title: '确认密码',
          onChanged: (value) { 
            _repeatPW = value;
          },
        ),
      ]
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          FlatButton(
            child: Text('修 改', style: TextStyle(color: Colors.white, fontSize: 16)),
            onPressed: () {
                  if (_originPWController.text.length == 0) {
                CommonUtil.showAlertDialog(context, title: '原密码不能为空');
              } else if (_newPWController.text.length == 0) {
                CommonUtil.showAlertDialog(context, title: '新密码不能为空');
              } else if (_newPWController.text.length == 0) {
                CommonUtil.showAlertDialog(context, title: '确认不能为空');
              } else {
                CommonUtil.showAlertDialog(context, title: '密码修改成功!');
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: leftPad,
          right: rightPad,
          top: 0,
          bottom: 10
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            inputField,
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );

    }
}
