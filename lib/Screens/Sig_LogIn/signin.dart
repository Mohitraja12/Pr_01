import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/DashBoard/dash.dart';
import 'package:projectquiz/Screens/Sig_LogIn/login.dart';
import 'package:projectquiz/Screens/Sig_LogIn/signinui.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignInuiPage()));
                  },
                  child: Text(
                    "cancel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'SpeakPro',
                        color: Colors.black),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'SpeakPro',
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        fontFamily: 'SpeakPro',
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.all(30),
                  height: 1000,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      color: Colors.white54),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Sign In With Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'SpeakPro',
                            color: Colors.black),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter You Mail",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'SpeakPro',
                                  color: Colors.black),
                              suffixIcon: Icon(
                                Icons.mail_outline,
                              )),
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 50,
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Create Password",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'SpeakPro',
                                  color: Colors.black),
                              suffixIcon: Icon(
                                Icons.password_outlined,
                              )),
                        ),
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DashBoard()));
                        },
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all()),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'SpeakPro',
                                    color: Colors.black),
                              ),
                            )),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF0E3311).withOpacity(0.1),
                            ),
                            child: Center(
                              child: Text(
                                "Continue With Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'SpeakPro',
                                    color: Colors.black),
                              ),
                            )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF0E3311).withOpacity(0.1),
                            ),
                            child: Center(
                              child: Text(
                                "Continue With Microsoft",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'SpeakPro',
                                    color: Colors.black),
                              ),
                            )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF0E3311).withOpacity(0.1),
                            ),
                            child: Center(
                              child: Text(
                                "Continue With Apple",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'SpeakPro',
                                    color: Colors.black),
                              ),
                            )),
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
