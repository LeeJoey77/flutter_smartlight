import 'package:flutter/material.dart';

class CalendarItem extends StatefulWidget {
  final String dateNum;
  final VoidCallback onTap;

  CalendarItem({Key key, @required this.dateNum, @required this.onTap})
   : super(key: key);

  @override
  _CalendarItemState createState() => _CalendarItemState();
}

class _CalendarItemState extends State<CalendarItem> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DateItem(
        onTap: widget.onTap,
        dateNum: widget.dateNum,
      ),
    );
  }
}

class DateItem extends StatelessWidget {

  final VoidCallback onTap;
  final String dateNum;
  DateItem({Key key, @required this.onTap, @required this.dateNum})
   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              child: Center(
                child: ClipOval(
                  child: Container(
                    child: Text(this.dateNum),
                    height: 44,
                    width: 44,
                    color: Colors.red,
                    alignment: Alignment.center,
                  ),
                ),
              )
            ),
          ),
          Expanded(
            child: Container(color: Colors.blue,),
          )
          
        ],
      )
    );
  }
}