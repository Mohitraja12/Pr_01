import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/Quizz/ProgramingLanguage/Common/answer_card.dart';
import 'package:projectquiz/Screens/Quizz/ProgramingLanguage/Common/next_button.dart';
import 'package:projectquiz/Screens/Quizz/ProgramingLanguage/Model/queation&answer.dart';
import 'package:projectquiz/Screens/Quizz/ProgramingLanguage/pr_02result.dart';

class ProgramingLanguage extends StatefulWidget {
  const ProgramingLanguage({super.key});

  @override
  State<ProgramingLanguage> createState() => _ProgramingLanguageState();
}

class _ProgramingLanguageState extends State<ProgramingLanguage> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = pquestions[questionIndex];
    if (selectedAnswerIndex == question.correctpAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < pquestions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = pquestions[questionIndex];
    bool isLastQuestion = questionIndex == pquestions.length - 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white],begin: Alignment.topLeft,end: Alignment.bottomRight)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(child: Text('Quiz App',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'ProtestStrike',
                color: Colors.black),)),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  question.pquestion,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'ProtestStrike',
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: question.poptions.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: selectedAnswerIndex == null
                          ? () => pickAnswer(index)
                          : null,
                      child: AnswerCard(
                        currentpIndex: index,
                        pquestion: question.poptions[index],
                        ispSelected: selectedAnswerIndex == index,
                        selectedpAnswerIndex: selectedAnswerIndex,
                        correctpAnswerIndex: question.correctpAnswerIndex,
                      ),
                    );
                  },
                ),
                // Next Button
                isLastQuestion
                    ? RectangularButtonp(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => ResultScreen(
                          score: score,
                        ),
                      ),
                    );
                  },
                  label: 'Finish',
                )
                    : RectangularButtonp(
                  onPressed: selectedAnswerIndex != null
                      ? goToNextQuestion
                      : null,
                  label: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
