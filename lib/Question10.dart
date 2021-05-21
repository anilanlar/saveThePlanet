import 'package:flutter/material.dart';
import 'package:fresh_start/Question11.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

class Question10 extends StatefulWidget {
  List dropDownList;
  Customer customerOfDropDownDatas;
  int dropDownPlaceHolder= 100;

  Question10(Customer gelencusti, List gelenlisti){
    this.dropDownList= gelenlisti;
    this.customerOfDropDownDatas= gelencusti;
  }


  @override
  _Question10State createState() => _Question10State();
}

class _Question10State extends State<Question10> {
  String questionSentence= "How often do you do your laundry?";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text("QUESTION 10"),
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
                      builder: (context) => Question11(
                          widget.dropDownList, widget.customerOfDropDownDatas),
                    ),
                  );
                  widget.customerOfDropDownDatas.howOftenLaundry= widget.dropDownPlaceHolder;
                  print("how OFTEN LAUNDRY:"+ widget.customerOfDropDownDatas.howOftenLaundry.toString());
                }),
          ],
        ),
      ),
    );
  }
}
