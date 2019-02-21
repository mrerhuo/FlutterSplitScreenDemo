import 'package:flutter/material.dart';
import 'OtherDetailState.dart';
import 'Car.dart';
class OtherDetailWidget extends StatefulWidget {
  final Car car;
  final String title;
  OtherDetailWidget({Key key,this.title, this.car}) : super(key: key);

  @override
  OtherDetailState createState() => new OtherDetailState();
  
}