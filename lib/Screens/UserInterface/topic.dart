import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/DashBoard/dash.dart';
import 'package:projectquiz/Screens/Quizz/ProgramingLanguage/pr_02.dart';
import 'package:projectquiz/Screens/Quizz/DBMS/pr_03.dart';
import 'package:projectquiz/Screens/Quizz/pr_05.dart';
import 'package:projectquiz/Screens/Quizz/pr_06.dart';

import '../Quizz/InfoRmation Technology/pr_01.dart';

class TopicSelection extends StatefulWidget {
  const TopicSelection({super.key});

  @override
  State<TopicSelection> createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.greenAccent,
      home: Container(
        decoration: BoxDecoration(
            ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DashBoard()));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    )),
                SizedBox(width: 70),
                Text(
                  "Lets Begin With The Quiz",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProtestStrike',
                      fontSize: 30),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "SELECT THE TOPIC FOR QUIZ",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'ProtestStrike',
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 900,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          InformationTechnology()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/TRjnq07/image.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Information Technology",
                                      style: TextStyle(
                                          fontFamily: 'ProtestRevolution',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ProgramingLanguage()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/XXMJKFd/image.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Programing Language",
                                      style: TextStyle(
                                          fontFamily: 'ProtestRevolution',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          DBMS()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/T2dtvFB/image.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "DBMS",
                                      style: TextStyle(
                                          fontFamily: 'ProtestRevolution',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          DBMS()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/JC5BS0K/image.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Computer Architect",
                                      style: TextStyle(
                                          fontFamily: 'ProtestRevolution',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          GK()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/30L1jxR/image.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "General Knowledge",
                                      style: TextStyle(
                                          fontFamily: 'ProtestRevolution',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CurrentAffairs()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/1JPYm3J/image.png"),
                                              fit: BoxFit.cover),
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Current Affairs",
                                      style: TextStyle(
                                          fontFamily: 'ProtestRevolution',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
