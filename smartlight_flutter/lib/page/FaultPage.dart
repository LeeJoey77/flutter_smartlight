import 'package:flutter/material.dart';
import 'package:smartlight_flutter/widget/FaultCell.dart';
import 'package:smartlight_flutter/page/FaultDetailPage.dart';
import 'package:smartlight_flutter/model/FaultModel.dart';


class FaultPage extends StatefulWidget {
  static final String sName = "fault";

  FaultPage({ Key key }) : super(key: key);
  @override
  _FaultPageState createState() => _FaultPageState();
}

class _FaultPageState extends State<FaultPage> {

  final leftPad = 25.0;
  final rightPad = 25.0;
  int listLength = 100;
  List<FaultModel> list = List(); //列表要展示的数据

  @override
  void initState() {
    super.initState();
    getData();
  }

  /**
   * 初始化list数据 加延时模仿网络请求
   */
  Future getData()  {
    setState(() {
      list = List.generate(listLength, (i) {
          return FaultModel(
            iD: i, 
            userName: '$i + babi',
            time: '${DateTime.now()}',
          );
        });
    });
  }

  /**
   * 下拉刷新方法,为list重新赋值
   */
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      print('refresh');
      setState(() {
        list = List.generate(listLength, (i) {
           return FaultModel(
             iD: i, 
             userName: '$i + 拉拉',
             time: '${DateTime.now()}',
             title: 'UI设计',
             content: '严选模式新电商, 网易严选成立了一直有各种行业专加, 生活达人, 严选用户'
           );
         });
      });
    });
  }

  //创建可点击的 row
  Widget getRow(int i) {
    return GestureDetector(
      child: FaultCell(model: list[i],),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return FaultDetailPage();
            }
          ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final kScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('数据统计'),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: list.length,
          itemBuilder: (context, index) {
          return getRow(index);
          },
        ),
      ),
    );
    
  }
  
}

