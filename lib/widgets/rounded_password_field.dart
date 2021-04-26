import 'package:candy_app/widgets/text_field_container_widget.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
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
