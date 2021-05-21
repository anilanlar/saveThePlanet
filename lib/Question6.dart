import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

import 'Question7.dart';

class Question6 extends StatefulWidget {
  List dropDownList;
  Customer customerOfDropDownDatas;
  int dropDownPlaceHolder = 100;

  Question6(Customer gelencusti, List gelenlisti) {
    this.dropDownList = gelenlisti;
    this.customerOfDropDownDatas = gelencusti;
  }

  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  String questionSentence= "How many people on average are your guests?";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text("QUESTION 6"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.blue,
              child: Text(
                questionSentence,
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
            DropdownButton(
                icon: Icon(Icons.add),
                dropdownColor: Colors.orange,
                hint: Text(
                  "+",
                  style: TextStyle(color: Colors.black),
                ),
                value: widget.dropDownPlaceHolder,
                items: [
                  DropdownMenuItem(value: 100, child: Text("1")),
                  DropdownMenuItem(value: 200, child: Text("2")),
                  DropdownMenuItem(value: 300, child: Text("3")),
                  DropdownMenuItem(value: 400, child: Text("4")),
                  DropdownMenuItem(value: 500, child: Text("5")),
                  DropdownMenuItem(value: 600, child: Text("6")),
                  DropdownMenuItem(value: 700, child: Text("7")),
                  DropdownMenuItem(value: 800, child: Text("8")),
                ],
                onChanged: (dynamic chosen) {
                  setState(() {
                    widget.dropDownPlaceHolder = chosen;
                  });
                }),
            RaisedButton(
                child: Text('SAVE'),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Question7(
                          widget.customerOfDropDownDatas, widget.dropDownList),
                    ),
                  );
                  widget.customerOfDropDownDatas.howManyGuests= widget.dropDownPlaceHolder;
                  print("how MANY GUESTS value:"+ widget.customerOfDropDownDatas.howManyGuests.toString());
                }),
          ],
        ),
      ),
    );
  }
}
