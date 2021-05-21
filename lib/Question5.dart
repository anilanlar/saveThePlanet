import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

import 'Question6.dart';

class Question5 extends StatefulWidget {
  List dropDownList;
  Customer customerOfDropDownDatas;
  int dropDownPlaceHolder = 100;


  Question5(Customer gelencusti, List gelenlisti) {
    this.dropDownList = gelenlisti;
    this.customerOfDropDownDatas = gelencusti;
  }

  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  String questionSentence="How often do you have guests? ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text("QUESTION 5"),
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
                  DropdownMenuItem(value: 100, child: Text("RARELY")),
                  DropdownMenuItem(value: 200, child: Text("OCCASIONALLY")),
                  DropdownMenuItem(value: 300, child: Text("OFTENTIMES")),
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
                      builder: (context) => Question6(
                          widget.customerOfDropDownDatas, widget.dropDownList),
                    ),
                  );
                widget.customerOfDropDownDatas.howOftenComingGuests= widget.dropDownPlaceHolder;
                print("how often value:"+ widget.dropDownPlaceHolder.toString());
                }),
          ],
        ),
      ),
    );
  }
}
