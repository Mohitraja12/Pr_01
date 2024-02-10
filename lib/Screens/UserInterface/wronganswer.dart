import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/UserInterface/topic.dart';

class WrongAnswer extends StatefulWidget {
  const WrongAnswer({super.key});

  @override
  State<WrongAnswer> createState() => _WrongAnswerState();
}

class _WrongAnswerState extends State<WrongAnswer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                image: NetworkImage(
                    "https://lh3.googleusercontent.com/proxy/hOq5CXn9JL-hxk4T-VuaROd96Q59nb2KRCoBdbQhdbN6yuA2IqRGZdh3TCnVV9pLxoqIfgkUnZlrAanjhS_lVDEQG1zroatpivm_Pb3mgVT1POmxA_TazsCOvFnisiAi-F8NK40pS5Vs6BrkYN_ifm5DpxUOHNB6pJxkWn9IOxE"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF0E3311).withOpacity(0.1),
                      border: Border.all(color: Colors.red)),
                  child: Center(
                      child: Text(
                    "Wrong Answer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  )),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop(MaterialPageRoute(builder: (context) => TopicSelection()));
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF0E3311).withOpacity(0.1),
                      border: Border.all(color: Colors.red)),
                  child: Center(
                      child: Text(
                    "Please Rstart The Quiz",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,fontFamily: 'ProtestStrike'),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
