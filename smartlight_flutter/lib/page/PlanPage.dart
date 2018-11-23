import 'package:flutter/material.dart';
import 'package:smartlight_flutter/widget/CalendarItem.dart';
import 'package:smartlight_flutter/util/NavigatorUtil.dart';

class PlanPage extends StatefulWidget {
  static final String sName = "fault";
  PlanPage({ Key key }) : super(key: key);
  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {

  final leftPad = 25.0;
  final rightPad = 25.0;
  
  @override
  Widget build(BuildContext context) {
    final kScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('计划'),
      ),
      body: Column(
        children: <Widget>[
          Container(color: Colors.red, height: 40),
          SizedBox(height: 15),
          Row(children: _createWeekDays()),
          SizedBox(height: 15),
          Expanded(
            child: GridView.count(
              crossAxisCount: 7,
              children: new List.generate(31, (index) {
                return CalendarItem(
                    dateNum: '$index',
                    onTap: () {
                      NavigatorUtil.gotoModifyPlanPage(context);
                    },
                );
              }),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 30, bottom: 30, right: 30),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Text(
                      '查看详情',
                      style: TextStyle(color: Colors.blue, fontSize: 17)
                    ),
                    onPressed: () {

                    },
                  ),
                ),
                SizedBox(width: 25,),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      '修 改',
                      style: TextStyle(color: Colors.blue, fontSize: 17)
                    ),
                    onPressed: () {

                    },
                  ),
                ),
              ],
            ),
          )
          
        ],
      )
      
    );
  }

  List<Widget> _createWeekDays() {
      const weekList = ['日', '一', '二', '三', '四', '五', '六', ];
      List<Widget> tempList = [];
      for (var item in weekList) {
        bool isWeekend = (item == '日' || item == '六');
        Color itemColor = isWeekend ? Colors.orange : Colors.blue;
        final tempItem = Expanded(
                child: Text(
                  item,
                  style: TextStyle(color: itemColor),
                  textAlign: TextAlign.center,)
        );
       tempList.add(tempItem);
      }
      return tempList;
    }
}
