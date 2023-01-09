import 'package:flutter/material.dart';

import '../Components/background.dart';
import '../Login/login_top_image.dart';
import '../Login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LoginPageTopImage(),
            Row(
              children: const [
                Spacer(),
                Expanded(
                  flex: 8,
                  child: LoginForm(), 
                ),
                Spacer(),
              ],
            )
          ],
        ))
    );
  }
}