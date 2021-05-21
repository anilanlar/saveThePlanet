import 'package:flutter/material.dart';
import 'package:fresh_start/Question5.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

class Question4 extends StatefulWidget {
  List checkBoxList;
  Customer customerOfCheckBox;
  String questionSentence =
      "Which of the following are there in your living space?";

  Question4(Customer gelencusti, List gelenlisti) {
    this.checkBoxList = gelenlisti;
    this.customerOfCheckBox = gelencusti;
  }

  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  List<String> roomsList= [];
  bool bathState = false;
  bool gardenState = false;
  bool kitchenState = false;
  bool diningRoomState = false;
  bool livingroomState = false;
  bool bedRoomState = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: Colors.greenAccent.shade200,
        appBar: AppBar(
          title: Text("QUESTION 4"),
        ),
        body: Center(
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Card(
                color: Colors.blue,
                child: Text(
                  widget.questionSentence,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              CheckboxListTile(
                  title: Text("BATH"),
                  activeColor: Colors.blue.shade900,
                  value: bathState,
                  onChanged: (a) {
                    setState(() {
                      if (bathState == true) {
                        bathState = false;
                      } else {
                        bathState = true;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("GARDEN"),
                  activeColor: Colors.blue.shade900,
                  value: gardenState,
                  onChanged: (a) {
                    setState(() {
                      if (gardenState == true) {
                        gardenState = false;
                      } else {
                        gardenState = true;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("KITCHEN"),
                  activeColor: Colors.blue.shade900,
                  value: kitchenState,
                  onChanged: (a) {
                    setState(() {
                      if (kitchenState == true) {
                        kitchenState = false;
                      } else {
                        kitchenState = true;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("DINING ROOM"),
                  activeColor: Colors.blue.shade900,
                  value: diningRoomState,
                  onChanged: (a) {
                    setState(() {
                      if (diningRoomState == true) {
                        diningRoomState = false;
                      } else {
                        diningRoomState = true;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("LIVING ROOM"),
                  activeColor: Colors.blue.shade900,
                  value: livingroomState,
                  onChanged: (a) {
                    setState(() {
                      if (livingroomState == true) {
                        livingroomState = false;
                      } else {
                        livingroomState = true;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("BEDROOM"),
                  activeColor: Colors.blue.shade900,
                  value: bedRoomState,
                  onChanged: (a) {
                    setState(() {
                      if (bedRoomState == true) {
                        bedRoomState = false;
                      } else {
                        bedRoomState = true;
                      }
                    });
                  }),
              RaisedButton(
                  child: Text('SAVE'),
                  color: Colors.orange,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question5(
                            widget.customerOfCheckBox, widget.checkBoxList),
                      ),
                    );
                    //////////////////////////////
                    if (bathState & !roomsList.contains("BATH")) {
                      roomsList.add("BATH");
                    }
                    if (!bathState & roomsList.contains("BATH")) {
                      roomsList.remove("BATH");
                    }
                    //////////////////////////////
                    if (gardenState & !roomsList.contains("GARDEN")) {
                      roomsList.add("GARDEN");
                    }
                    if (!gardenState & roomsList.contains("GARDEN")) {
                      roomsList.remove("GARDEN");
                    }
                    //////////////////////////////
                    if (kitchenState & !roomsList.contains("KITCHEN")) {
                      roomsList.add("KITCHEN");
                    }
                    if (!kitchenState & roomsList.contains("KITCHEN")) {
                      roomsList.remove("KITCHEN");
                    }
                    //////////////////////////////
                    if (diningRoomState & !roomsList.contains("DINING ROOM")) {
                      roomsList.add("DINING ROOM");
                    }
                    if (!diningRoomState & roomsList.contains("DINING ROOM")) {
                      roomsList.remove("DINING ROOM");
                    }
                    //////////////////////////////
                    if (livingroomState & !roomsList.contains("LIVING ROOM")) {
                      roomsList.add("LIVING ROOM");
                    }
                    if (!livingroomState & roomsList.contains("LIVING ROOM")) {
                      roomsList.remove("LIVING ROOM");
                    }
                    //////////////////////////////
                    if( bedRoomState & !roomsList.contains("BEDROOM")){
                      roomsList.add("BEDROOM");
                    }
                    if (!bedRoomState & roomsList.contains("BEDROOM")) {
                      roomsList.remove("BEDROOM");
                    }
                    //////////////////////////////
                    print("rooms"+ roomsList.toString());
                    widget.customerOfCheckBox.rooms= roomsList;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
