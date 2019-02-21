import 'package:flutter/material.dart';
import 'ListState.dart';
import 'Car.dart';

typedef Null ItemSelectedCallback(Car value);

class ListWidget extends StatefulWidget{
  ListWidget(this.title,this.onItemSelected);
  final String title;
  final ItemSelectedCallback onItemSelected;
  @override
  ListState createState() => new ListState();
}