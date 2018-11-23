import 'package:flutter/material.dart';

class FaultModel {
  int iD;
  String avatar;
  String userName;
  String time;
  String title;
  String content;

  FaultModel({
    @required this.iD,
    this.userName = '',
    this.time = '',
    this.title = '',
    this.avatar = 'resource/music1.jpeg',
    this.content = ''
  });
}