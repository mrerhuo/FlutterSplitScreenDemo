import 'package:flutter/material.dart';
import 'ListState.dart';
import 'Car.dart';

typedef Null ItemSelectedCallback(Car value);

class ListWidget extends StatefulWidget{
  //ListWidget(this.title,this.onItemSelected);
  ListWidget({Key key, this.title,this.onItemSelected}) : super(key: key);
  final String title;
  final ItemSelectedCallback onItemSelected;
  @override
  ListState createState() => new ListState();
}