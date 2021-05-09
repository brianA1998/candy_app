import 'package:candy_app/widgets/text_field_container_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundedInputField extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: _emailController,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: Colors.black),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
