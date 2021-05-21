import 'package:flutter/material.dart';
import 'package:fresh_start/Question3.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';
import 'package:fresh_start/initialpage.dart';

class Question2 extends StatefulWidget {
  Customer customerSlider;
  String questionPlaceHolderSlider= "How old are you?";

  List questionInfos;

  Question2(Customer gelenTabloNesnesi, List soruBilgileri) {
    this.customerSlider = gelenTabloNesnesi;
    this.questionInfos = soruBilgileri;
  }

  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  double sliderValue = 13;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("QUESTION 2"),
        ),
        body: Container(
          color: Colors.greenAccent.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.blue,
                child: Text(
                  widget.questionPlaceHolderSlider,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Slider(
                  value: sliderValue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue = newValue;
                    });
                  },
                  min: 13.0,
                  max: 80.0,
                  divisions: 67,
                  label: "${sliderValue.toInt()}",
                ),
              ),
              Align(
                alignment: Alignment(0.8, 3),
                child: RaisedButton(
                  child: Text('SAVE'),
                  color: Colors.orange,
                  onPressed: () {
                    widget.customerSlider.age = sliderValue.toInt();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Question3(
                                widget.customerSlider,
                                widget.questionInfos)));

                  }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
