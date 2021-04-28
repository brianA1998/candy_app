import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? "¿No tienes cuenta?" : "¿Ya tienes cuenta?",
            style: TextStyle(fontSize: 18)),
        GestureDetector(
          onTap: press,
          child: Text(login ? "Sign Up" : "Sign In",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
        ),
      ],
    );
  }
}
