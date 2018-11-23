import 'package:flutter/material.dart';
import 'package:smartlight_flutter/widget/LineChartWidget.dart';
import 'package:smartlight_flutter/page/EnergyStatisticPage.dart';
import 'package:smartlight_flutter/page/FaultStatisticPage.dart';
import 'package:smartlight_flutter/page/DeviceStatisticPage.dart';

class StatisticPage extends StatelessWidget {
  static final String sName = "statistic";

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('数据统计'),
            bottom: new TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return new Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: new TabBarView(
            children: choices.map((Choice choice) {
              return _createPage(choice);
            }).toList(),
          ),
        ),
      );
  }
}


class Choice {
  const Choice({ this.title, this.icon, this.index });
  final int index;
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '能耗统计', index: 0),
  const Choice(title: '故障统计', index: 1),
  const Choice(title: '设备统计', index: 2),
];

Widget _createPage(Choice choice) {
  if (choice.index == 0) {
    return EnergyStatisticPage();
  } else if (choice.index == 1) {
    return FaultStatisticPage();
  } else {
    return DeviceStatisticPage();
  }
}



