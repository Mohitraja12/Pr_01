import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/DashBoard/dash.dart';
import 'package:projectquiz/Screens/Sig_LogIn/signin.dart';
import 'package:projectquiz/Screens/Sig_LogIn/signinui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
         ),
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
                        fontSize: 30,
                        fontFamily: 'SpeakPro',
                        color: Colors.black),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignPage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
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
                Container(
                  margin: EdgeInsets.all(30),
                  height: 1000,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                     color: Colors.white54),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Log In",
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
                              hintText: "Username or Email",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
                                "Log in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'SpeakPro',
                                    color: Colors.black),
                              ),
                            )),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Forgot Password ? Reset Your Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'SpeakPro',
                            color: Colors.black),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 20),
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
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
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
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
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
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
