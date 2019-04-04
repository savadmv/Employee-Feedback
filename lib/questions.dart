import 'package:first_flutter_app/employee_list.dart';
import 'package:flutter/material.dart';

import 'employee_list.dart';
import 'text_question.dart';

class QuestionPage extends StatelessWidget {
  User user;
  List<String> questions=["What do you see as the primary drivers of success in our organization?",
  "What do you see as the top opportunities for us to increase our organizational performance?",
  "List specific contributions to your team, the company or to a customer.",
  "How would you describe the corporate culture here? What could you do or what suggestions do you have to improve it?",
  "In which area(s) would you like to improve?",
  "What are your goals for the next six months/year?",
  "What do you feel your greatest success have been over the past 6 months?",
  "Rate your job satisfaction and describe the things that you feel were the biggest contributing factors to that rating",
  "Do you have questions for me as it relates to your goals and objectives for the next 6 months?",
  "What have I done or can do to help you do your job better? Have I done anything to hinder your job performance?"];




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
             child: TextQuestions(questions[position]),
         );
       },
       itemCount: 6,
     ),
    );
  }
}
