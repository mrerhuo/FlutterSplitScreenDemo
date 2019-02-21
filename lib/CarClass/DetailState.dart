import 'package:flutter/material.dart';
import 'DetailWidget.dart';

class DetailState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Card(
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  new Text(
                    '汽车名称：',
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    widget.car==null?"":widget.car.name,
                    style: new TextStyle(fontSize: 20.0),
                  )
                ])),
            new Card(
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  new Text(
                    '汽车颜色：',
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                   widget.car==null?"": widget.car.color,
                    style: new TextStyle(fontSize: 20.0),
                  )
                ])),
          ],
        ),
      );
  }
}