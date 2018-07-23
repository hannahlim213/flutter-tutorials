import 'package:flutter/material.dart';

import '../utils/questions.dart';
import '../utils/quiz.dart';

import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          //This is our main page
          children: <Widget>[
            new AnswerButton(true, () => print("you answered trueeee")),
            new QuestionText("pIZZA is Nice", 1),
            new AnswerButton(false, () => print("you answered falseeee")),
          ],
        ),
        new CorrectWrongOverlay(false)
      ],
    );
  }
}
