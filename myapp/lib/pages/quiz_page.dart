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
  
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Elon Musk is human", false),
    new Question("Pizza is health", false),
    new Question("Flutter is awesome", true)
  ]);

  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldbeVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  // void handleAnswer(bool answer {

  // })
  
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          //This is our main page
          children: <Widget>[
            new AnswerButton(true, () => print("you answered trueeee")),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => print("you answered falseeee")),
          ],
        ),
        overlayShouldbeVisible == true ? new CorrectWrongOverlay(false) : new Container()
      ],
    );
  }
}
