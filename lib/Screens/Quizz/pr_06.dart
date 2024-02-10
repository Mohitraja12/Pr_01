import 'package:flutter/material.dart';
import 'package:projectquiz/Screens/UserInterface/result.dart';
import 'package:projectquiz/Screens/UserInterface/wronganswer.dart';

class CurrentAffairs extends StatefulWidget {
  const CurrentAffairs({Key? key}) : super(key: key);

  @override
  State<CurrentAffairs> createState() => _CurrentAffairs();
}

class _CurrentAffairs extends State<CurrentAffairs> {
  // List of questions
  final List<String> questions = [
    "What is the process at the most detailed level of the data flow diagrams known as?",
    "Identify the language which is mainly used for Artificial Intelligence?",
    "Why is a firewall used in a computer? ",
    "The full form of DOM is?",
    "Identify the total standard color names that HTML supports.",
  ];

  final List<List<String>> options = [
    [
      'Functional primitives',
      'Interfaces',
      'Data Flow',
      'Transfer Discription'
    ],
    [
      'Document Object Memory',
      'Document Object Model',
      'Both Of them',
      'None of them'
    ],
    ['J2EE','C', 'PROLOG','JAVA'],
    ['Monitoring', 'Security', 'Data Transmission','Authentication', ],

    ['40', '35', '100','130','140'],
  ];

  bool isAnswerCorrect(int questionIndex, int selectedOptionIndex) {
    return selectedOptionIndex == questionIndex;
  }

  final List<int?> selectedOptions = List.filled(5, null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.tenor.com/Ff6wjyxPiwoAAAAi/bynorafikse-bynora.gif"))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text(
                "InformationTechnology",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'ProtestStrike'),
              ),
            ),
          ),
          body: SafeArea(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Question ${index + 1}:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'ProtestStrike'
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF0E3311).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Text(questions[index],
                                      style: TextStyle(fontSize: 20,fontFamily: 'ProtestStrike'))),
                            ],
                          )),
                      SizedBox(height: 10),
                      // Create ElevatedButton for each option
                      ...List.generate(
                        options[index].length,
                            (optionIndex) {
                          return ListView(
                            shrinkWrap: true,
                            children: [
                              ListTile(
                                title: InkWell(
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: selectedOptions[index] ==
                                          optionIndex
                                          ? Colors
                                          .green // Selected option color
                                          : null,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.yellowAccent),
                                    ),
                                    child: Center(
                                      child: Text(
                                        options[index][optionIndex],
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black,fontFamily: 'ProtestStrike'),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedOptions[index] = optionIndex;
                                    });

                                    if (isAnswerCorrect(index, optionIndex)) {
                                    } else {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WrongAnswer()));
                                    }
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          bottomNavigationBar: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ResultPage()));
            },
            child: Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF0E3311).withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: Center(child: Text("Check The Result",style: TextStyle(fontFamily: 'ProtestStrike',fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
      ),
    );
  }
}
