import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';
import 'Question4.dart';

class Question3 extends StatefulWidget {
  Customer customerSlider;
  String questionPlaceHolderSlider= "How many people are there in your living space?";

  // QuestionInfo listesi= ["soru","soru",int kacincisorudayim]
  List questionInfos;

  Question3(Customer gelenTabloNesnesi, List soruBilgileri) {
    this.customerSlider = gelenTabloNesnesi;
    this.questionInfos = soruBilgileri;

  }

  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  double sliderValue = 3;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("QUESTION 3"),
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
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  label: "${sliderValue.toInt()}",
                ),
              ),
              Align(
                alignment: Alignment(0.8, 3),
                child: RaisedButton(
                    child: Text('SAVE'),
                    color: Colors.orange,
                    onPressed: () {
                      widget.customerSlider.numberOfPeopleinFamily=  sliderValue.toInt();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question4(
                                  widget.customerSlider,
                                  widget.questionInfos)));
                    print("yaşı:" + widget.customerSlider.age.toString());
                      print("kisi sayisi:" + widget.customerSlider.numberOfPeopleinFamily.toString());

                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
