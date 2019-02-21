import 'package:flutter/material.dart';
import 'OtherDetailWidget.dart';
import 'DetailWidget.dart';

class OtherDetailState extends State<OtherDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: new Text("详细信息"),
        centerTitle:true
      ),
      body: DetailWidget(car:widget.car),
    );
  }
}