import 'dart:async';

import 'package:flutter/material.dart';

import 'questions.dart';



class EmployeeList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EmployeeListState();
  }

  EmployeeList();
}
class EmployeeListState extends State<EmployeeList> {
  List<User> users = [];

  Future<List<User>> _getUsers() async {
//    var data= await http.get("www.home.in");
//    var jsonData=json.decode(data.body);
    setState(() {
      for (var i = 0; i < 20; i++) {
        User user = new User(
            1, "Test" + i.toString(), "test" + i.toString() + "@gmail.com");
        users.add(user);
      }
    });
    return users;
  }

  @override
  void initState() {
    // TODO: implement initState
    this._getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Emporio Kannur"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.arrow_back_ios),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.refresh),
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(accountName: new Text("Savad mv"),
                accountEmail: new Text("test@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("S", style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0),),
                ),),
              new ListTile(
                title: new Text("Home"),
                trailing: new Icon(Icons.home),
              ),
              new ListTile(
                title: new Text("Log out"),
                trailing: new Icon(Icons.arrow_back_ios),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    new Container(
                      alignment: Alignment.topLeft,
                      child: new Text("Employee List", style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),),
                    ),
                    new Container(
                      alignment: Alignment.topRight,
                      child: new Icon(Icons.filter_list),
                    )


                  ],
                ),
              ),
              Expanded(
                child: new Container(
                  height: 200.0,
                  child: new ListView.builder(
                    itemCount:users.length ,
                    itemBuilder: (BuildContext context, int index) {
                      return new ListTile(
                        title: new Text(users[index].user_name),
                        leading: new CircleAvatar(backgroundColor: Colors.blue,
                          child: new Text(index.toString()),),
                        subtitle: new Text(users[index].mail_id),
                        selected: index == 2 ? true : false,
                        onTap: () {
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => QuestionPage(users[index])));
                        },

                      );
                    },
                  ),
                ),
              )

            ],

          ),
        )

    );
  }
}


class User {
  final int id;
  final String user_name;
  final String mail_id;

  User(this.id, this.user_name, this.mail_id);
}


