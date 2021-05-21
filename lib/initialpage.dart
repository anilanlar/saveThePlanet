import 'package:flutter/material.dart';
import 'package:fresh_start/DropDownDatas.dart';
import 'package:fresh_start/SliderDatas.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

import 'Question1.dart';
import 'RadioDatas.dart';

class Initialpage extends StatelessWidget {
  Customer customerInitial= Customer();
  List<dynamic> allQuestions= [
    "How should we refer to you? ",
    "How old are you?",
    "How many people are there in your living space?",
    "Which of the following are there in your living space? Garden- kitchen - bath- dining room- living room- bedroom- studio- en suite dorm room",
    "How often do you have guests? ",
    "How many people on average are your guests? ",
    "How many of them are likely to stay over night? ",
    "Does your job/school  require you to wear a uniform?",
    "How often do you go out (don’t count going to work/school; or other occasions listed before)",
    "How often do you do your laundry?",
    "Do you make-up?",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade500,
      appBar: AppBar(
          elevation: 10.0,
          leading: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          backgroundColor: Colors.green[700],
          centerTitle: true,
          title: Text("Save The Planet")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Question1(customerInitial,allQuestions)))
                    .then((value) {
                  print("SliderDatasDonusDegeri" + value.toString());
                });
              },
              child: Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text("       FIRST                 QUESTION"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
                RaisedButton(
                  shape: RoundedRectangleBorder(),
                  onPressed: () {
                    Navigator.pushNamed(context, "/OverConsumptionWarning")
                        .then((value) {
                      print("Overconsumptiondandonusdegeri" + value.toString());
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text("OverConsumptionWarning"),
                    ),
                  ),
                ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

              ],
            ),
          ],
        ),
      ),
    );
  }
}
