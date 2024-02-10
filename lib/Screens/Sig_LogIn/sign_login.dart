import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/Sig_LogIn/login.dart';
import 'package:projectquiz/Screens/Sig_LogIn/signinui.dart';

class Sig_LogIn extends StatefulWidget {
  const Sig_LogIn({super.key});

  @override
  State<Sig_LogIn> createState() => _Sig_LogInState();
}

class _Sig_LogInState extends State<Sig_LogIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.ibb.co/XJGQ9zH/image.png"))),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50))),
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      Text(
                        "WELCOME",
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 50,
                            fontFamily: 'ProtestStrike',
                            color: Colors.black),
                      ),
                      Text(
                        'Think...Understand...Enjoy...',
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'ProtestStrike',
                            color: Colors.black),
                      ),
                      SizedBox(height: 50),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignInuiPage()));
                        },
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(),
                            ),
                            child: Center(
                              child: Text("NEXT",
                                  style: TextStyle(
                                      fontFamily: 'ProtestStrike',
                                      fontSize: 35,
                                      color: Colors.black)),
                            )),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Already have account? Login",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(right: 50, left: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Text("Privacy",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15))),
                            InkWell(
                              onTap: () {},
                              child: Text("Terms",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                            ),
                          ],
                        ),
                      )
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
