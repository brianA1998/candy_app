import 'package:candy_app/widgets/text_field_container_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  TextEditingController _passwordController = TextEditingController();
  final ValueChanged<String> onChanged;
  RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: _passwordController,
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña",
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffix: Icon(Icons.visibility, color: Colors.black),
            border: InputBorder.none),
      ),
    );
  }
}
