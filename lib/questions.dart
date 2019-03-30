import 'package:first_flutter_app/employee_list.dart';
import 'package:flutter/material.dart';

import 'employee_list.dart';
import 'text_question.dart';

class QuestionPage extends StatelessWidget {
  User user;




  QuestionPage(this.user);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(user.user_name),
      ),
     body: PageView.builder(
       itemBuilder: (context, position) {
         return Container(
             child: TextQuestions(position),
         );
       },
       itemCount: 6,
     ),
    );
  }
}
