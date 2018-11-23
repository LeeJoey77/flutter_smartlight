import 'package:flutter/material.dart';
import 'PlanPage.dart';
import 'FaultPage.dart';
import 'StatisticPage.dart';
import 'MinePage.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:smartlight_flutter/util/NavigatorUtil.dart';

class MyHomePage extends StatefulWidget {
  
  static final String sName = "/";
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedItem = '';
  var _popupItemTitleList = [
    '市电测试项目',
    '测试项目二',
    'ceshi3',
    '测试实验',
    '中移',
    'CS',
    'CS11',
    '双灯',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 10),
          icon: Icon(Icons.refresh),
          iconSize: 32,
          onPressed: () {},
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return _createPopupMenuItems(_popupItemTitleList);
            },
            onSelected: (str) {
              setState(() {
                _selectedItem = str;
              });
            },
            padding: EdgeInsets.only(right: 120),
            child: Icon(
              Icons.receipt,
              size: 32,
            ),
          ),
        ],
        title: Text('data'),
      ),
      body: FlutterMap(
        options: new MapOptions(
            center: new LatLng(30.5, 104.06),
            zoom: 10.0,
          ),
          layers: [
            new TileLayerOptions(
                urlTemplate:
                "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            new MarkerLayerOptions(markers: _createMapMarkers(context))
          ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NavigatorUtil.gotoScanQrPage(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
    );
  }
}

List<PopupMenuEntry<String>> _createPopupMenuItems(List<String> itemTitleList) {
  var tempList = <PopupMenuEntry<String>>[];
  for (int i = 0; i < itemTitleList.length; i++) {
    var item = _createPopupMenuItem(itemTitleList[i]);
    tempList.add(item);
  }
  return tempList;
}

Widget _createPopupMenuItem(String title) {
  return PopupMenuItem(
    value: '',
    child: ListTile(
      // leading: Icon(Icons.music_note),
      title: Text(title),
    ),
  );
}

List<Marker> _createMapMarkers(BuildContext context) {
  var items = [''];
  List<Marker> tempList = [];
  for (var item in items) {
    final marker = Marker(
        width: 35.0,
        height: 35.0,
        point: new LatLng(30.5, 104.06),
        builder: (ctx) => new Container(
          child: IconButton(
            icon: Image.asset('resource/free-city@3x.png'),
            onPressed: () {
              NavigatorUtil.gotoLightDetailPage(context);
            },
          ),
        ),
    );
    tempList.add(marker);
  }
  return tempList;
}
