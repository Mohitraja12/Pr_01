import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/UserInterface/topic.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> imgLst = [
    "https://i.ibb.co/rc5yKfJ/image.png",
    "https://i.ibb.co/3NJgrdd/image.png",
    "https://i.ibb.co/gbKpDVX/image.png",
    "https://i.ibb.co/hC0bRSn/image.png",
    "https://i.ibb.co/r2qpNZb/image.png",
    "https://i.ibb.co/pzn5vLm/image.png",
    "https://i.ibb.co/3WxHnvX/image.png"
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "Quiz App.. Dash Board",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'ProtestStrike',
                    color: Colors.black),
              ),
              actions: [
                Icon(Icons.notifications, color: Colors.black, size: 30),
              ],
            ),
            drawer: Drawer(
              backgroundColor: Colors.transparent,
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Container(
                        height: 300,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.ibb.co/LPrjMxc/image.png"),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily: 'SpeakPro',
                                          color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add_circle,
                                      color: Colors.black,
                                      size: 35,
                                    ),
                                    Text(
                                      "Add Member",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily: 'SpeakPro',
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {},
                    title: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Your Quiz",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'SpeakPro',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {},
                    title: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Edit Your Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'SpeakPro',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {},
                    title: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Start A JAM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'SpeakPro',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {},
                    title: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          " Add Friends",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'SpeakPro',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {},
                    title: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          " Your Friends",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'SpeakPro',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {},
                    title: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'SpeakPro',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
              height: 30,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Q??Reel",
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
                          builder: (context) => TopicSelection()));
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Quiz",
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
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Library",
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
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 10, left: 10),
                    decoration: BoxDecoration(border: Border.all()),
                    child: Column(
                      children: [
                        Text(
                          "Word Of The Day",
                          style: TextStyle(
                              fontFamily: 'ProtestStrike', fontSize: 30,color: Colors.black),
                        ),
                        Divider(),
                        Text(
                          "amalgamate : ",
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'ProtestStrike',color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "     used especially about organizations, groups,etc.) to join together to form a single organization, group, etc.",
                          style: TextStyle(
                              fontFamily: 'SpeakPro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...imgLst.map((e) => SingleChildScrollView(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                        image: NetworkImage(""))),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
            // child: Column(
            //   children: [
            //     SizedBox(height: 20),
            //     Text(
            //       "Things You Might Don't Know..",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 35,
            //           fontFamily: 'ProtestRevolution',
            //           color: Colors.black),
            //     ),
            //     ...imgLst.map((elements) =>  Column(
            //       children: [
            //         SizedBox(height: 20),
            //         Center(
            //             child: Container(
            //               margin: EdgeInsets.all(20),
            //               height: 500,
            //               width: double.infinity,
            //               decoration: BoxDecoration(
            //                 border: Border.all(),
            //                   image: DecorationImage(
            //                       image: NetworkImage(elements), fit: BoxFit.cover)),
            //             )),
            //         Divider(
            //           thickness: 5,
            //           color: Colors.black54,
            //         )
            //       ],
            //     )),
            //
            //   ],
            // ),
            ),
      ),
    );
  }
}
