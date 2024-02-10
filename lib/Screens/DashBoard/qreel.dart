import 'package:flutter/material.dart';

class Qreels extends StatefulWidget {
  const Qreels({super.key});

  @override
  State<Qreels> createState() => _QreelsState();
}

class _QreelsState extends State<Qreels> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.white],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
      ),
    );
  }
}
