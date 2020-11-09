import 'package:flutter/material.dart';

class reusable_icon extends StatelessWidget {
  reusable_icon(
      {@required this.onPress,
      @required this.colour,
      @required this.text_content,
      @required this.text_style,
      @required this.icondata});

  final Function onPress;
  final Color colour;
  final String text_content;
  final TextStyle text_style;
  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPress,
          child: Icon(
            icondata,
            color: colour,
            size: 30.0,
          ),
        ),
        Text(
          text_content,
          style: text_style,
        )
      ],
    );
  }
}
