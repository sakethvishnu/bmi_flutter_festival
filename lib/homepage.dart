import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              )),
              Expanded(child: CardWidget(
                cardChild: IconText(
                  icon: FontAwesomeIcons.venus,
                  txt: 'Female',
                ),
              )),
            ],
          )),
          Expanded(child: CardWidget()),
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


