import 'package:flutter/material.dart';

//Widget de inputText del login
class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  //Constructor
  const TextFieldContainer({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: child,
    );
  }
}
