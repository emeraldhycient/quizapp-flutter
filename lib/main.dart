import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<MyApp> {
  int currentQuestionIndex = 0;
  void AnswerQuestion() {
    print(currentQuestionIndex);
    if (currentQuestionIndex > 1) {
      setState(() {
        currentQuestionIndex = 0;
      });
    }
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext contextsha) {
    var questions = ["what's your name", "whats the name of your first pet"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("my app")),
        body: Column(
          children: [
            Text(questions[currentQuestionIndex]),
            ElevatedButton(
                onPressed: AnswerQuestion, child: Text("answer question 1")),
            ElevatedButton(
                onPressed: AnswerQuestion, child: Text("answer question 2")),
            ElevatedButton(
                onPressed: AnswerQuestion, child: Text("answer question 3")),
          ],
        ),
      ),
    );
  }
}
