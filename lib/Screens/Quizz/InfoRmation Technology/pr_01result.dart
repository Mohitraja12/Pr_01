import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/UserInterface/topic.dart';

import 'Model/queation&answer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 1000),
              Text(
                'Your Score: ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    fontFamily: 'ProtestStrike',
                    color: Colors.black),
              ),
              SizedBox(height: 100),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: score / 10,
                      color: Colors.green,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        score.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80,
                            fontFamily: 'ProtestStrike',
                            color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${(score / questions.length * 100).round()}%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'ProtestStrike',
                            color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TopicSelection()));
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
