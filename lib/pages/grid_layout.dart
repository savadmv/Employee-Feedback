import 'package:flutter/material.dart';

class GridLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GridLayoutState();
  }
  
  
}

class _GridLayoutState extends State<GridLayout> {

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
      appBar: new AppBar(
        title: new Text("Grid layout"),
      ),
      body: new Center(
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 3,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(15, (index) {
            return Center(
              child: new Card(
                child:new Image.network(userImages[index],fit: BoxFit.fill,) ,),
            );
          }),
        ),
      ),
    );
  }
}