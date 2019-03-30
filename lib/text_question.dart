import 'package:flutter/material.dart';

class TextQuestions extends StatelessWidget {
  final int qs_no;
  ScrollController c=new ScrollController() ;

  TextQuestions(this.qs_no);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                        height: 50.0,
                        width: 50.0,
                        child: new Icon(
                          Icons.arrow_left,
                          size: 40,
                        ),
                      margin: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text(
                                "What are the wuestion to asked ?",
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 28.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                        height: 50.0,
                        width: 50.0,
                        child: new Icon(
                          Icons.arrow_right,
                          size: 40,
                        ),
                      margin: EdgeInsets.only(left: 8.0),),
                  ],
                ),
                new TextField(
                  decoration: new InputDecoration(labelText: "Score"),
                ),
                new SizedBox(
                  height: 15.0,
                ),
                new Container(
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.circular(10.0)),
                  height: 50.0,
                  width: 100.0,
                  child: new Text(
                    "Submit",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
