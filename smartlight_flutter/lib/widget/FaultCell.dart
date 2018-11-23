import 'package:flutter/material.dart';
import 'package:smartlight_flutter/model/FaultModel.dart';

class FaultCell extends StatefulWidget {
  FaultModel model;
  FaultCell({this.model, Key key}): super(key: key);
  @override
  _FaultCellState createState() => _FaultCellState();
}

class _FaultCellState extends State<FaultCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
      child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 15,
                      child: ClipOval(
                            child: Image.asset(
                              widget.model.avatar,
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                            )
                        )
                    ),
                    SizedBox(width: 7,),
                    Expanded(child: Text(widget.model.userName), flex: 5,),
                    Expanded(child: Text(widget.model.time, maxLines: 1, overflow: TextOverflow.ellipsis,), flex: 1)
                  ],
                ),
                SizedBox(height: 10,),
                Text(widget.model.title, 
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                SizedBox(height: 5,),
                Text(widget.model.content,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          )
      )
    );
  }
}