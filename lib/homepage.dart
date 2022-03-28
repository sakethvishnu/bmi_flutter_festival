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
  int height = 180,weight = 50,age = 20;
  Color male = kInactiveCardColor,female = kInactiveCardColor;

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
                colors: male,
                cardChild: IconText(
                  icon: FontAwesomeIcons.mars,
                  txt: 'Male',
                ),
                onTaps: (){
                  setState(() {
                    male = kActiveCardColor;
                    female = kInactiveCardColor;
                  });
                  print("Male");
                },
              ),
              ),
              Expanded(child: CardWidget(
                colors: female,
                cardChild: IconText(
                  icon: FontAwesomeIcons.venus,
                  txt: 'Female',
                ),
                onTaps: (){
                  setState(() {
                    female = kActiveCardColor;
                    male = kInactiveCardColor;
                  });
                  print("Female");
                  },
              )),
            ],
          )),
          Expanded(child: CardWidget(
            colors: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Height".toUpperCase(),style: kLabelStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("$height",style: kNumberStyle,),
                    Text("cm",style: kLabelStyle,)
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: sliderInactive,
                    thumbColor: sliderActive,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    overlayColor: sliderOverlay
                  ),
                  child: Slider(
                      min: 120.0,
                      max: 220.0,
                      // activeColor: sliderActive,
                      // inactiveColor: sliderInactive,
                      value: height.toDouble(),//height update avvatle
                      onChanged: (value){
                        setState(() {
                          height = value.toInt();
                        });
                        // height = value.toInt();
                      }),
                ),
              ],
            ),
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: CardWidget(
                colors: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT",style: kLabelStyle,),
                    Text("$weight",style: kNumberStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconsButton(
                          icons: FontAwesomeIcons.minus,
                          onClick: (){
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        IconsButton(icons: FontAwesomeIcons.plus,onClick: (){
                          setState(() {
                            weight++;
                          });
                        },)
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(child: CardWidget(
                colors: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Age",style: kLabelStyle,),
                    Text("$age",style: kNumberStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconsButton(
                          icons: FontAwesomeIcons.minus,
                          onClick: (){
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        IconsButton(
                          icons: FontAwesomeIcons.plus,
                          onClick: (){
                            setState(() {
                              age++;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
        ],
      ),
    );
  }
}



