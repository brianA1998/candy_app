import 'package:flutter/material.dart';

//Widget de inputText del login
class TextFieldContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, top: 55.0, right: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(29.0)),
      child: TextField(
        decoration:
            InputDecoration(hintText: "Tu correo", icon: Icon(Icons.person)),
      ),
    );
  }
}
