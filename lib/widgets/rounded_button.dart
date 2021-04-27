import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  final Color textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.green,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.green[300]),
            onPressed: press,
            child: Text(text, style: TextStyle(color: textColor)),
          ),
        ),
      ),
    );
  }
}
