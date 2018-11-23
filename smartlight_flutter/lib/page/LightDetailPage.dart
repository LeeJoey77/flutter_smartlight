import 'package:flutter/material.dart';

class LightDetailPage extends StatelessWidget {
  static final String sName = "lightDetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('灯杆详情'),
      ),
      body: Container(color: Colors.red,)
    );
  }
}