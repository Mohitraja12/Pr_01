import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/UserInterface/topic.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({super.key});

  @override
  State<OpenPage> createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.ibb.co/1TzkwbY/bg1.jpg"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 500,
                              width: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.ibb.co/Yc32n1q/lgo.png"))),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TopicSelection()));
                              },
                              child: Text(
                                "Let's Play",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold,fontFamily: 'ProtestStrike'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            )));
  }
}
