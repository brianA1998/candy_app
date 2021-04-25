import 'package:flutter/material.dart';

//Widget de inputText del login
class TextFieldContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  //Constructor
  const TextFieldContainer({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, top: 55.0, right: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(29.0)),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText, icon: Icon(icon), border: InputBorder.none),
      ),
    );
  }
}
