import 'package:flutter/material.dart';
import 'package:fresh_start/tabloConsumption/Customer.dart';
import 'package:fresh_start/initialpage.dart';

class SliderDatas extends StatefulWidget {
  Customer customerSlider;
  String questionPlaceHolderSlider;
  // QuestionInfo listesi= ["soru","soru",int kacincisorudayim]
  List questionInfos;

  SliderDatas(Customer gelenTabloNesnesi, List soruBilgileri) {
    this.customerSlider = gelenTabloNesnesi;
    this.questionInfos = soruBilgileri;
    this.questionPlaceHolderSlider= soruBilgileri[soruBilgileri.last];
  }

  @override
  _SliderDatasState createState() => _SliderDatasState();
}

class _SliderDatasState extends State<SliderDatas> {
  double sliderValue = 3;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        widget.questionInfos.last-=1;
        print("son eleman"+widget.questionInfos.last.toString());
        return Future.value(true);
        },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Questions about customer"),
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
                      if (widget.questionInfos.last == 1) {
                        widget.customerSlider.age = sliderValue.toInt();
                        widget.questionInfos.last += 1;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SliderDatas(
                                    widget.customerSlider, widget.questionInfos)));
                        print("yaş assign edildi"+ widget.customerSlider.age.toString());
                      }
                      if (widget.questionInfos.last == 2) {
                        widget.customerSlider.numberOfPeopleinFamily = sliderValue.toInt();
                        print("misafir sayısı assign edildi"+widget.customerSlider.numberOfPeopleinFamily.toString() );
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
