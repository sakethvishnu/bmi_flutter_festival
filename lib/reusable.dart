import 'package:flutter/material.dart';

import 'constants.dart';
class CardWidget extends StatelessWidget {
  // const CardWidget({
  //   Key? key,
  // }) : super(key: key);
  final Widget? cardChild;
  final VoidCallback? onTaps;
  final Color colors;
  CardWidget({this.cardChild,this.onTaps,required this.colors});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaps,
      child: Container(
        // color: kActiveCardColor,
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(15),
        ),
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

class IconsButton extends StatelessWidget {

  final IconData icons;
  final VoidCallback? onClick;
  IconsButton({required this.icons,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      child: Icon(icons),
      fillColor: Color(0xFF8D8E98),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          width: 50,
          height: 50
      ),
    );
  }
}
