import 'package:flutter/material.dart';
import 'package:smartlight_flutter/widget/BarChartWidget.dart';

class FaultStatisticPage extends StatelessWidget {
  static final String sName = "faultStatistic";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GroupedBarChart.withRandomData(),
          ),
        ],
      ),
    ));
  }
}
