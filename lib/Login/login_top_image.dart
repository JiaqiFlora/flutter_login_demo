import 'package:demo_login/constant.dart';
import 'package:flutter/material.dart';

class LoginPageTopImage extends StatelessWidget {
  const LoginPageTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "LOGIN",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/dartmouth_logo.png",
              width: 180,
              fit: BoxFit.fitWidth,
            ),
            // Expanded(
            //   flex: 10,
            //   child: Image.asset(
            //     "assets/images/dartmouth_logo.png",
            //     width: 150,
            //     fit: BoxFit.fitWidth,
            //   ),
            // ),
            const Spacer()
          ],
        ),
        SizedBox(height: defaultPadding * 2)
      ],
    );
  }
}
