import 'package:flutter/material.dart';

class FaultDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('故障详情'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10, 
          bottom: 10
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '设备 ID: 2003230239234',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                // Positioned(
                //   right: 20,
                //   child: Text('待处理'),
                // )
              ],
            ),
            Text(
                '所属项目: 2G11',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '灯杆名称: DGAGAGMKMCE',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '故障 ID: 2034',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '故障位置',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '2018-11-12 17:42:19',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '告警详情:',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '设备发生灯具故障',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '解决方案:',
                style: TextStyle(fontSize: 17),
            ),
            Text(
                '请处理',
                style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 350,),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    child: Text('处理'),
                    color: Colors.blue,
                    onPressed: (){

                    },
                  ),
                ),
                SizedBox(width: 30,),
                Expanded(
                  child: MaterialButton(
                    child: Text('上报'),
                    color: Colors.blue,
                    onPressed: (){

                    },
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}