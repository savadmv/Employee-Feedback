import 'dart:async';

import 'package:flutter/material.dart';


class EmployeeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EmployeeListState();
  }


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
                      );
                    },
                  ),
                ),
              )

            ],

          ),
        )
//      new ListView.builder(
//        itemCount: 9,
//        itemBuilder: (BuildContext context, int index) {
//          return new ListTile(
//            title: new Text(users[index].user_name),
//            subtitle: new Text(users[index].mail_id),
//          );
//        },
//      )
//      Container(
//
//        alignment: Alignment.topCenter,
//        child: new Column(
//          children: <Widget>[
//            new Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//
//                new Container(
//                  alignment: Alignment.topLeft,
//                  child: new Text("Employee List", style: new TextStyle(
//                      color: Colors.black,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 24.0),),
//                ),
//                new Container(
//                  alignment: Alignment.topRight,
//                  child: new Icon(Icons.filter_list),
//                )
//
//
//              ],
//            ),
////            new Container(
////
////                child: new ListView.builder(
////                  itemCount: 9,
////                  itemBuilder: (BuildContext context, int index) {
////                    return new ListTile(
////                      title: new Text(users[index].user_name),
////                      subtitle: new Text(users[index].mail_id),
////                    );
////                  },
////                )
////            )
////            new ListView.builder(
////              itemCount: 9,
////              itemBuilder: (BuildContext context, int index) {
////
////                return new ListTile(
////                  title: new Text(users[index].user_name) ,
////                  subtitle: new Text(users[index].mail_id),
////                );
////              },
////            )
//          ],
//        ),
//      ),

    );
  }
}

class User {
  final int id;
  final String user_name;
  final String mail_id;

  User(this.id, this.user_name, this.mail_id);
}


//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new Container(
//      alignment: Alignment.topCenter,
//
//      child: Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: new Column(
//
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//              child: new Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//
//                  new Container(
//                    alignment: Alignment.topLeft,
//                    child: new Text("Employee List", style: new TextStyle(
//                        color: Colors.black,
//                        fontWeight: FontWeight.bold,
//                        fontSize: 24.0),),
//                  ),
//                  new Container(
//                    alignment: Alignment.topRight,
//                    child: new Icon(Icons.filter_list),
//                  )
//
//
//                ],
//
//              ),
//            ),
//            new Container(
//              child: new ListView(
//                children: <Widget>[
//                  new ListTile(
//                    title: new Text("Savad"),
//                    subtitle: new Text("test@gmail.com"),
//                    leading: new CircleAvatar(
//                      backgroundColor: Colors.black,
//                    ),
//                  ),
//                ],
//              ),
//            )
//
////            new ListView(
////              children: <Widget>[
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                ),
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                ),
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                ),
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                )
////              ],
////            )
//          ],
//        ),
//      ),
//
//    );
//  }
//}


//class EmployeeList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Emporio Kannur"),
//        actions: <Widget>[
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: new Icon(Icons.arrow_back_ios),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: new Icon(Icons.refresh),
//          )
//        ],
//      ),
//      drawer: new Drawer(
//        child: new ListView(
//          children: <Widget>[
//            new UserAccountsDrawerHeader(accountName: new Text("Savad mv"),
//              accountEmail: new Text("test@gmail.com"),
//              currentAccountPicture: new CircleAvatar(
//                backgroundColor: Colors.white,
//                child: new Text("S", style: new TextStyle(
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                    fontSize: 32.0),),
//              ),),
//            new ListTile(
//              title: new Text("Home"),
//              trailing: new Icon(Icons.home),
//            ),
//            new ListTile(
//              title: new Text("Log out"),
//              trailing: new Icon(Icons.arrow_back_ios),
//            )
//          ],
//        ),
//      ),
//      body: EmployeeListBody(),
//
//    );
//  }
//
//}


//class EmployeeListBody extends StatefulWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Container(
//      alignment: Alignment.topCenter,
//
//      child: Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: new Column(
//
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//              child: new Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//
//                  new Container(
//                    alignment: Alignment.topLeft,
//                    child: new Text("Employee List", style: new TextStyle(
//                        color: Colors.black,
//                        fontWeight: FontWeight.bold,
//                        fontSize: 24.0),),
//                  ),
//                  new Container(
//                    alignment: Alignment.topRight,
//                    child: new Icon(Icons.filter_list),
//                  )
//
//
//                ],
//
//              ),
//            ),
//            new Container(
//              child: new ListView(
//                children: <Widget>[
//                  new ListTile(
//                    title: new Text("Savad"),
//                    subtitle: new Text("test@gmail.com"),
//                    leading: new CircleAvatar(
//                      backgroundColor: Colors.black,
//                    ),
//                  ),
//                ],
//              ),
//            )
//
////            new ListView(
////              children: <Widget>[
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                ),
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                ),
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                ),
////                new ListTile(
////                  title: new Text("Savad"),
////                  subtitle: new Text("test@gmail.com"),
////                  leading: new CircleAvatar(
////                    backgroundColor: Colors.black,
////                  ),
////                )
////              ],
////            )
//          ],
//        ),
//      ),
//
//    );
//  }
//
