import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/Sig_LogIn/sign_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Sig_LogIn()));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                SizedBox(height: 250),
                Container(
                  height: 350,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.ibb.co/fNSbFn5/image.png"),
                          fit: BoxFit.cover)),
                  child:  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Unlocking Knowledge At the Speed of Thoughts",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
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
