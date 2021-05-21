import 'package:flutter/material.dart';
import 'package:fresh_start/OverConsumptionWarning.dart';

import 'initialpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "/"        : (context)=> Initialpage(),
        "/OverConsumptionWarning": (context)=> OverConsumptionWarning("gelenanil"),

      } ,
      debugShowCheckedModeBanner: false,

      //home: Initialpage(),
    );
  }
}
