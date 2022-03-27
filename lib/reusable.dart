import 'package:flutter/material.dart';

import 'constants.dart';
class CardWidget extends StatelessWidget {
  // const CardWidget({
  //   Key? key,
  // }) : super(key: key);
  final Widget? cardChild;
  CardWidget({this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: kActiveCardColor,
      margin: EdgeInsets.all(15.0),
      child: cardChild,
      decoration: BoxDecoration(
        color: kActiveCardColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  // const IconText({
  //   Key? key,
  // }) : super(key: key);
  final String txt;
  final IconData icon;
  IconText({required this.icon,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
        SizedBox(
          height:15,
        ),
        Text(txt.toUpperCase(),style: kLabelStyle,),
      ],
    );
  }
}