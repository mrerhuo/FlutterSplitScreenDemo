import 'package:flutter/material.dart';
import 'SplitScreenWidget.dart';
import '../CarClass/ListWidget.dart';
import '../CarClass/DetailWidget.dart';
import '../CarClass/OtherDetailWidget.dart';
import '../CarClass/Car.dart';
class SplitScreenState extends State<SplitScreenWidget>{

  Car selectedValue;
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Split Screen Demo"),
        centerTitle:true
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        //判断是否分屏，根据宽度决定大于600为true,需要分屏
        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }
        //定义Row
        return Row(children: <Widget>[
          Expanded(
            child: ListWidget("列表",(value) {
              if (isLargeScreen) {
                selectedValue = value;
                setState(() {});
              } else {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return OtherDetailWidget(car:value);
                  },
                ));
              }
            }),
          ),
          isLargeScreen ? Expanded(child: DetailWidget(car:selectedValue)) : Container(),
        ]);
      }),
    );
  }
}