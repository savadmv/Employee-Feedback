import 'package:flutter/material.dart';
import 'employee_list.dart';

class NewPage extends StatefulWidget{
  String pageTitle;




  NewPage(this.pageTitle);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewPageState(pageTitle);
  }


}

class _NewPageState extends State<NewPage> {

  String pageTitle;

  List<String> userImages=["http://placeimg.com/256/256/people","http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people","http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/156/256/people",
  "http://placeimg.com/256/256/people","http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/256/246/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people","http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/256/256/people",
  "http://placeimg.com/251/256/people"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
    body:new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: new Text("Sliver effect"),
            expandedHeight: 250.0,
            pinned: false,
            flexibleSpace: new FlexibleSpaceBar(
              centerTitle: true,
              background: Image.network("http://placeimg.com/480/640/any",fit: BoxFit.cover,),
            ),
          )
          ,new SliverList(delegate: new SliverChildBuilderDelegate((context,index)=>
          new ListTile(
            title: new Text("this is test"),
            leading: new CircleAvatar(backgroundImage: NetworkImage(userImages[index]),
            ),
            subtitle:new Text("This is just a content discription"),
          ),
          childCount: 18)
          )
        ],

      ),
    );
  }

  _NewPageState(this.pageTitle);
}