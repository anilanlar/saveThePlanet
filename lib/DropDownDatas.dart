import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

class DropDownDatas extends StatefulWidget {
  List dropDownList;
  Customer customerOfDropDownDatas;
  String dropDownPlaceHolder= "aa";

  DropDownDatas(Customer gelencusti, List gelenlisti){
    this.dropDownList= gelenlisti;
    this.customerOfDropDownDatas= gelencusti;
    this.dropDownPlaceHolder= gelenlisti[gelenlisti.last];
  }


  @override
  _DropDownDatasState createState() => _DropDownDatasState();
}

class _DropDownDatasState extends State<DropDownDatas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade500,
      appBar: AppBar(
        title: Text("dropdownpage"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: DropdownButton(
            icon: Icon(Icons.add),
            dropdownColor: Colors.orange,
            hint: Text("AAAAAAAAAAAAA",style: TextStyle(color: Colors.black),),
            value: widget.dropDownPlaceHolder,
              items: [
                DropdownMenuItem(value:widget.dropDownList[0] ,child: Text(widget.dropDownList[0])),
                DropdownMenuItem(value:widget.dropDownList[1] ,child: Text(widget.dropDownList[1])),
                DropdownMenuItem(value:widget.dropDownList[2] ,child: Text(widget.dropDownList[2])),
                DropdownMenuItem(value:widget.dropDownList[3] ,child: Text(widget.dropDownList[3])),
              ],
              onChanged: (dynamic chosen) {
                setState(() {
                  widget.dropDownPlaceHolder=chosen;
                  print(widget.dropDownPlaceHolder);
                });
              }),
        ),
      ),
    );
  }
}
