import 'package:flutter/material.dart';

class OverConsumptionWarning extends StatefulWidget {
  OverConsumptionWarning(String gelenanil) {
    print("yarattım" + gelenanil);
  }

  @override
  _OverConsumptionWarningState createState() => _OverConsumptionWarningState();
}

class _OverConsumptionWarningState extends State<OverConsumptionWarning> {
  String donus = "dondum";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, donus);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tell me what you have"),
          backgroundColor: Colors.green[800],
          shape: RoundedRectangleBorder(),
        ),
        backgroundColor: Colors.yellow.shade800,
        body: Center(
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              filled: true,
              hoverColor: Colors.black,
              focusColor: Colors.white,
              border: OutlineInputBorder(),
              labelText: 'What you have?',
            ),
          ),
        ),

      ),
    );
  }
}
