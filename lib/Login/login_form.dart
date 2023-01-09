import 'package:demo_login/constant.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: primaryColor,
          onSaved: (email) {}, // TODO: email!
          decoration: InputDecoration(
            hintText: "Your email",
            fillColor: Color.fromARGB(244, 231, 242, 232),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Icon(Icons.person),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: TextFormField(
            obscureText: true,
            textInputAction: TextInputAction.done,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              hintText: "Your password",
              fillColor: Color.fromARGB(244, 231, 242, 232),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.lock),
              ),
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        Hero(
            tag: "login_button",
            child: ElevatedButton(
              onPressed: () {}, // TODO: login button press!
              child: Text("Login".toUpperCase()),
            )),
        const SizedBox(height: defaultPadding),
      ],
    ));
  }
}
