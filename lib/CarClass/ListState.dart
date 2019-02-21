import 'package:flutter/material.dart';
import 'ListWidget.dart';
import 'Car.dart';

class ListState extends State<ListWidget> {
    List<Car> cars =
      new List<Car>.generate(50, (i) => new Car('Car $i', 'Color is $i'));
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return new ListTile(
                  title: new Text(cars[index].name),
                  //点击后，通过路由导航至汽车详情页面，同时把点击的那个汽车信息传到下一个页面
                  onTap: () {
                     widget.onItemSelected(cars[index]);
                  });
            }
      );
  }
}