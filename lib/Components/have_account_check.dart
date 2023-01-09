import 'package:demo_login/constant.dart';
import 'package:flutter/material.dart';

class HaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;

  const HaveAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an account ? ",
          style: const TextStyle(color: Colors.black),
        ),
        GestureDetector(
            onTap: press as void Function()?,
            child: Text(
              login ? "Sign Up" : "Sign in",
              style: const TextStyle(
                  color: primaryColor, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
