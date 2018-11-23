import 'package:flutter/material.dart';

class SLChangePWInputView extends StatefulWidget {

  // Widget 中定义的变量是构造函数需要的属性
  final String hintText;
  final title;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  

  SLChangePWInputView({
    Key key,
    this.title,
    this.hintText,
    this.onChanged,
    this.controller,
    })
    : super(key: key);

  @override
  _SLChangePWInputViewState createState() => _SLChangePWInputViewState();
}

class _SLChangePWInputViewState extends State<SLChangePWInputView> {
    
    //State 中定义的变量是 setState 时要改变的值
    final FocusNode _focusNode = FocusNode();
    var _hasDeleteBt = false;//是否创建清除按钮

    @override
    void initState(){
        super.initState();
        _focusNode.addListener(_focusNodeListener);  // 初始化一个listener
    }
 
    @override
    void dispose(){
        _focusNode.removeListener(_focusNodeListener);  // 页面消失时必须取消这个listener！！
        super.dispose();
    }
 
    //textfield 是否失去键盘焦点
    Future<Null> _focusNodeListener() async {  // 用async的方式实现这个listener
        if (_focusNode.hasFocus){
          setState(() {
            _hasDeleteBt = true;        
          });
        } else {
          setState(() {
            _hasDeleteBt = false;        
          });
        }
    }

 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('${widget.title}: ', style: TextStyle(fontSize: 17),),
        SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            focusNode: _focusNode,
            autofocus: false,
            decoration: InputDecoration(
              hintText: widget.hintText,        
              suffixIcon: _hasDeleteBt ? IconButton(
                icon: Image.asset(
                  'resource/clear.png',
                  width: 23,
                  height: 23,
                ),
                onPressed: () {
                  widget.controller.clear();
                },
              ) : Text('')
            ),
          )
        ),
      ],
    );
  }
}