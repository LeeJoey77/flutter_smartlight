import 'package:flutter/material.dart';

class ModifyPlanPage extends StatelessWidget {
  static final String sName = "modifyPlan";

  @override
  Widget build(BuildContext context) {
    final kScreenWidth = MediaQuery.of(context).size.width;
    final kScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('修改计划'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              height:  80,
              width: kScreenWidth - 80,
              child: Card(
                color: Colors.orange,
                child: Center(
                  child: Text('$index', style: TextStyle(fontSize: 20),),
                ),
                elevation: 1,
              ),
            );
          },
          itemCount: 5,
        ),
      )
    );
  }
}