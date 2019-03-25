import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dashboard"),
      ),
      body:DashBoardBody(),
    );
  }

}

class DashBoardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text("dashboard")
    );
  }
}