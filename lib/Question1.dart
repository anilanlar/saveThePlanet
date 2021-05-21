import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';
import 'Question2.dart';

class Question1 extends StatefulWidget {
  Customer customerSlider;
  List questionInfos;

  Question1(Customer gelenTabloNesnesi, List soruBilgileri) {
    this.customerSlider = gelenTabloNesnesi;
    this.questionInfos = soruBilgileri;
  }

  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: Colors.greenAccent.shade200,
        appBar: AppBar(
          title: Text("QUESTION 1"),
        ),
        body: Center(
          child: TextField(
            keyboardType: TextInputType.name,
            controller: TextEditingController(),
            onSubmitted: (String value) async {
              if (value.length > 0) {
                widget.customerSlider.nameSurname= value;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Question2(widget.customerSlider, widget.questionInfos),
                  ),
                );
              } else {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('ALERT!'),
                      content: Text(
                          'PLEASE TYPE A VALID NAME'),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
