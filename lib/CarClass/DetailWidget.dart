import 'package:flutter/material.dart';
import 'DetailState.dart';
import 'Car.dart';
class DetailWidget extends StatefulWidget {
  final Car car;
  DetailWidget({Key key, this.car}) : super(key: key);

  @override
  DetailState createState() => new DetailState();
  
}