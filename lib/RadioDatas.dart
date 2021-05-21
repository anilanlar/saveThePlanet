import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresh_start/SliderDatas.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';

import 'DropDownDatas.dart';

class RadioDatas extends StatefulWidget {
  String questionPlaceHolder;
  String radioPlaceHolder = "Female";
  List sorularRadioPage;
  Customer customerRadio;

  RadioDatas(List gelenListSorular, Customer gelenCustomer) {
    this.sorularRadioPage = gelenListSorular;
    this.customerRadio = gelenCustomer;
    this.questionPlaceHolder = gelenListSorular[gelenListSorular.last];
  }

  @override
  _RadioDatasState createState() => _RadioDatasState();
}

class _RadioDatasState extends State<RadioDatas> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        widget.sorularRadioPage.last -= 1;
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("RADIO"),
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
                      subtitle: Text("Female"),
                      value: "Female",
                      groupValue: widget.radioPlaceHolder,
                      onChanged: (String deger) {
                        setState(() {
                          widget.radioPlaceHolder = deger;
                          print("yeni deger" + deger);
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
                      subtitle: Text("Male"),
                      value: "Male",
                      groupValue: widget.radioPlaceHolder,
                      onChanged: (String deger) {
                        setState(() {
                          widget.radioPlaceHolder = deger;
                          print("yeni deger" + deger);
                        });
                      }),
                ),
                //SAVE BUTTON
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      print("eeee" + widget.sorularRadioPage.last.toString());
                      widget.sorularRadioPage.last += 1;
                      print("son eleman degeri" +
                          widget.sorularRadioPage.last.toString());
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SliderDatas(
                                  widget.customerRadio,
                                  widget.sorularRadioPage)));
                    });
                  },
                  icon: Icon(Icons.save),
                  label: Text("SAVE"),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DropDownDatas(
                                widget.customerRadio,
                                widget.sorularRadioPage))).then((value) {
                      print("dropdowndonus" + value.toString());
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text("Dropdowna GIT"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
