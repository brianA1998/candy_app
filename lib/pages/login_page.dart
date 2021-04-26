import 'package:candy_app/widgets/rounded_input_field.dart';
import 'package:candy_app/widgets/rounded_password_field.dart';
import 'package:candy_app/widgets/text_field_container_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 730,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/fondoApp.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000.0),
                      image: DecorationImage(
                        image: AssetImage("assets/logoApp.jpeg"),
                        fit: BoxFit.cover,
                      )),
                ),
                RoundedInputField(
                  hintText: "Tu correo - Usuario",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
