import 'package:flutter/material.dart';

import 'constants.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kActiveCardColor,
      margin: EdgeInsets.all(15.0),
    );
  }
}

