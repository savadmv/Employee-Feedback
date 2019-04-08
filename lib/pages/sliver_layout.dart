import 'package:flutter/material.dart';
import 'employee_list.dart';

class SliverLayout extends StatefulWidget{
  String pageTitle;




  SliverLayout(this.pageTitle);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SliverLayoutState(pageTitle);
  }


}

class _SliverLayoutState extends State<SliverLayout> {

  String pageTitle;


  @override
  void initState() {
    getImages();
  }

  List<String> userImages=[];
  List<String> getImages(){
    for (var i = 0; i < 18; i++) {
      userImages.add("http://placeimg.com/"+(480+i).toString()+"/"+(480+i).toString()+"/tech");
    }
  }



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

  _SliverLayoutState(this.pageTitle);
}