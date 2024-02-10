import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/Sig_LogIn/signin.dart';

class SignInuiPage extends StatefulWidget {
  const SignInuiPage({super.key});

  @override
  State<SignInuiPage> createState() => _SignInuiPageState();
}

class _SignInuiPageState extends State<SignInuiPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
                child: Text(
              "Sign In Yourself",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ProtestStrike',
                  color: Colors.black),
            )),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.ibb.co/F5RkW8W/image.png"))),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 20),
                  child: Center(
                    child: Text(
                      "Which Type Of Account Would You Like to Create",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'ProtestStrike',
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Center(
                                child: Text(
                                  "Teacher",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'ProtestStrike',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20, right: 20),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white54),
                              child: Center(
                                child: Text(
                                  "Personal",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'ProtestStrike',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white54),
                              child: Center(
                                child: Text(
                                  "Professional",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      fontFamily: 'ProtestStrike',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20, right: 20),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  color: Colors.white54),
                              child: Center(
                                child: Text(
                                  "Student",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      fontFamily: 'ProtestStrike',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
