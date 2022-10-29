import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool userAnswer, BuildContext context) {
    bool correctAnswers = quizBrain.getQuestionAnswer();

    setState(
      () {
        if (quizBrain.nextQuestion() != false) {
          userAnswer == correctAnswers
              ? scoreKeeper.add(
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                )
              : scoreKeeper.add(
                  const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                );
        } else {
          Alert(
            context: context,
            title: 'Finished',
            desc: 'You\'ve reached the end of the quiz.',
            buttons: [
              DialogButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'CANCEL',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ).show();
          scoreKeeper.clear();
          // quizBrain.nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('Quizzler'),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      quizBrain.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      checkAnswer(true, context);
                    },
                    child: const Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        color: Colors.red,
                      ),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      checkAnswer(false, context);
                    },
                    child: const Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              )
            ],
          ),
        ),
      ),
    );
  }
}
