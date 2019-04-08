import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'questions.dart';
import './pages/employee_list.dart';



class Dashboard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashboardState();
  }

  Dashboard();
}
class DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new MaterialApp(
      home: new EmplpyeeListPage() ,
    );

  }
}





