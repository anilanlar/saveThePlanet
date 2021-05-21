import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresh_start/SliderDatas.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

import 'DropDownDatas.dart';

class Question11 extends StatefulWidget {
  String questionPlaceHolder= "How often do you make up?";
  bool radioPlaceHolder = true;
  List sorularRadioPage;
  Customer customerRadio;

  Question11(List gelenListSorular, Customer gelenCustomer) {
    this.sorularRadioPage = gelenListSorular;
    this.customerRadio = gelenCustomer;
  }

  @override
  _Question11State createState() => _Question11State();
}

class _Question11State extends State<Question11> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: Colors.greenAccent.shade200,
        appBar: AppBar(
            title: Text("QUESTION 11"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                      child: Text(
                        widget.questionPlaceHolder,
                        style: TextStyle(fontSize: 30),
                      )),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  width: 600,
                  height: 140,
                ),
                Container(
                  width: 300,
                  height: 100,
                  color: Colors.amberAccent,
                  child: RadioListTile(
                      activeColor: Colors.purple,
                      title: Icon(Icons.account_circle),
                      subtitle: Text("YES"),
                      value: true,
                      groupValue: widget.radioPlaceHolder,
                      onChanged: (bool deger) {
                        setState(() {
                          widget.radioPlaceHolder = deger;
                        });
                      }),
                ),
                Container(
                  color: Colors.deepOrange,
                  width: 300,
                  height: 100,
                  child: RadioListTile(
                      activeColor: Colors.purple,
                      title: Icon(Icons.account_circle),
                      subtitle: Text("NO"),
                      value: false,
                      groupValue: widget.radioPlaceHolder,
                      onChanged: (bool deger) {
                        setState(() {
                          widget.radioPlaceHolder = deger;
                        });
                      }),
                ),
                //SAVE BUTTON
                RaisedButton(
                    child: Text('SAVE'),
                    color: Colors.orange,
                    onPressed: () {
                      widget.customerRadio.makeUp= widget.radioPlaceHolder;
                      widget.customerRadio.situationPrinter();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
