import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

import 'Question10.dart';

class Question9 extends StatefulWidget {
  List dropDownList;
  Customer customerOfDropDownDatas;
  int dropDownPlaceHolder= 100;

  Question9(Customer gelencusti, List gelenlisti){
    this.dropDownList= gelenlisti;
    this.customerOfDropDownDatas= gelencusti;
  }


  @override
  _Question9State createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  String questionSentence= "How often do you go out (don’t count going to work/school; or other occasions listed before)";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text("QUESTION 9"),
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
                      builder: (context) => Question10(
                          widget.customerOfDropDownDatas, widget.dropDownList),
                    ),
                  );
                  widget.customerOfDropDownDatas.howOftenGoOut= widget.dropDownPlaceHolder;
                  print("how often go out:"+ widget.customerOfDropDownDatas.howOftenGoOut.toString());
                }),
          ],
        ),
      ),
    );
  }
}
