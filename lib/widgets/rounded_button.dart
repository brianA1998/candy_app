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
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.green[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
          onPressed: press,
          child: Text(text, style: TextStyle(color: textColor, fontSize: 16)),
        ),
      ),
    );
  }
}
