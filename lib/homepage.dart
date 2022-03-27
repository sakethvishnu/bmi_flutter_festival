import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text("Bmi Calculator"),
        centerTitle: true,),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: CardWidget(
                cardChild: IconText(
                  icon: FontAwesomeIcons.mars,
                  txt: 'Male',
                ),
                // onTaps: (){
                //   print("Male");
                // },
              ),
              ),
              Expanded(child: CardWidget(
                cardChild: IconText(
                  icon: FontAwesomeIcons.venus,
                  txt: 'Female',
                ),
                // onTaps: (){
                //   print("Female");
                //   },
              )),
            ],
          )),
          Expanded(child: CardWidget(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Slider"),
                Slider(
                    min: 120.0,
                    max: 220.0,
                    value: height.toDouble(),//height update avvatle
                    onChanged: (value){
                      setState(() {
                        height = value.toInt();
                      });
                      // height = value.toInt();
                      print(value);
                    }),
              ],
            ),
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: CardWidget()),
              Expanded(child: CardWidget()),
            ],
          )),
        ],
      ),
    );
  }
}


