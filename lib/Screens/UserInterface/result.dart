import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/UserInterface/open.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<String> resultLst = [
    "If you haven't redirected to any wrong page then you have done all the questions correct >>>> Excellent",
    "If you have redirected to wrong page once then you have attempted one wrong question >>>> Very Good",
    "If you have redirected to wrong page twice then you have attempted two wrong question >>>> Good",
    "If you have redirected to wrong page thrice then you have attempted three wrong question >>>> Can be Improved",
    "If you do not come under the above category >>>> Work Hard"
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://i.ibb.co/1TzkwbY/bg1.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
                child: Text(
              "Reult Time",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,fontFamily: 'ProtestStrike'),
            )),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  ...List.generate(
                      resultLst.length,
                      (index) => Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(500)),
                          )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
