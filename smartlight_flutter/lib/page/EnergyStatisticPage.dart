import 'package:flutter/material.dart';
import 'package:smartlight_flutter/widget/LineChartWidget.dart';

class EnergyStatisticPage extends StatelessWidget {
  static final String sName = "energy";

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
          Container(
            height: 350,
            child: LineAnimationZoomChart.withRandomData(),
          ),
          Expanded(
              child: Column(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.adb,
                  ),
                  title: Text('adfadfadfadfa'),
                  subtitle: Text('data'),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.adb,
                  ),
                  title: Text('adfadfadfadfa'),
                  subtitle: Text('data'),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.adb,
                  ),
                  title: Text('adfadfadfadfa'),
                  subtitle: Text('data'),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.adb,
                  ),
                  title: Text('adfadfadfadfa'),
                  subtitle: Text('data'),
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
