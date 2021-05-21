import 'package:flutter/material.dart';
import 'package:fresh_start/Question8.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

class Question7 extends StatefulWidget {
  List dropDownList;
  Customer customerOfDropDownDatas;
  int dropDownPlaceHolder = 100;

  Question7(Customer gelencusti, List gelenlisti) {
    this.dropDownList = gelenlisti;
    this.customerOfDropDownDatas = gelencusti;
  }

  @override
  _Question7State createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  String questionSentence= "How many of them are likely to stay over night? ";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text("QUESTION 7"),
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
                      builder: (context) => Question8(
                          widget.dropDownList, widget.customerOfDropDownDatas),
                    ),
                  );
                  widget.customerOfDropDownDatas.howManyStayOverNight= widget.dropDownPlaceHolder;
                  print("how many NIGHT STAYER value:"+ widget.customerOfDropDownDatas.howManyStayOverNight.toString());
                }),
          ],
        ),
      ),
    );
  }
}
