import 'package:first_flutter_app/questions.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import './new_page.dart';



class EmplpyeeListPage extends StatefulWidget{

  _EmplpyeeListPageState createState() => new _EmplpyeeListPageState();

  EmplpyeeListPage();
}

class _EmplpyeeListPageState extends State<EmplpyeeListPage> {

  Future<List<User>> _getUsers() async {
    var data = await http.get("https://jsonplaceholder.typicode.com/users");
    print("Syncing..............");

    var jsonData = json.decode(data.body);
    List<User> users = [];
//    setState(() {
    for (var u in jsonData) {
      User user = new User(
          u[ "id"], u["name"], u[ "username"], u[ "email"]);
      users.add(user);
    }
//    });
    return users;
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
                decoration: BoxDecoration(image: DecorationImage(
                  fit: BoxFit.fill,
                    image: new NetworkImage("https://picsum.photos/200/300"))),
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
                selected: true,
                trailing: new Icon(Icons.home),
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new EmplpyeeListPage())),
              ),
              new ListTile(
                title: new Text("Log out"),

                trailing: new Icon(Icons.arrow_back_ios),
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new NewPage("Logout Page"))),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 16.0),
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
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
              FutureBuilder(
                future: _getUsers(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if(snapshot.data==null){
                    return new Center(
                      child: new Text("loading"),
                    );

                  }
                  else {
                    return Expanded(
                      child: Container(
                        height: 200.0,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return new Card(
                              margin: EdgeInsets.symmetric(vertical: 2.0,horizontal: 0.0),
                              child: new ListTile(
                                title: new Text(snapshot.data[index].name),
                                leading: new CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: new Text(snapshot.data[index].id.toString()),),
                                subtitle: new Text(snapshot.data[index].email),
                                selected: index == 2 ? true : false,
                                onTap: () {
                                  Navigator.push(context, new MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionPage(snapshot.data[index])));
                                },

                              ),
                            );
                          },
                        ),
                      ),
                    );
                  }
                },
              )

//              Expanded(
//                child: new Container(
//                  height: 200.0,
//                  child: new ListView.builder(
//                    itemCount:users.length ,
//                    itemBuilder: (BuildContext context, int index) {
//                      return new ListTile(
//                        title: new Text(users[index].user_name),
//                        leading: new CircleAvatar(backgroundColor: Colors.blue,
//                          child: new Text(index.toString()),),
//                        subtitle: new Text(users[index].mail_id),
//                        selected: index == 2 ? true : false,
//                        onTap: () {
//                          Navigator.push(context, new MaterialPageRoute(
//                              builder: (context) => QuestionPage(users[index])));
//                        },
//
//                      );
//                    },
//                  ),
//                ),
//              )

            ],

          ),
        )

    );
  }


}


class User {
  final String name;
  final int id;
  final String username;
  final String email;



  User(this.id, this.name, this.username, this.email);
}