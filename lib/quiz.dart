import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    print("😂😂😂😂😂😂😂");
    print((questions[questionIndex]['answer']));

    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),

        ...(questions[questionIndex]['answer'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: _answerQuestion,
        // ),
        // RaisedButton(
        //     child: Text('Answer 2'),
        //     onPressed: () =>
        //         print("button 2 pressed")), //anonymous function
        // RaisedButton(
        //     child: Text('Answer 3'),
        //     onPressed: () {
        //       //anonymous function
        //       print("Answer 3 chosen");
        //     }),
      ],
    );
  }
}
