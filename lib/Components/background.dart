import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  // final String topImage;
  // final String bottomImage;

  const BackGround({
    Key? key,
    required this.child,
    // this.topImage = "assets/images/dartmouth.jpg",
    // this.bottomImage = "assets/images/dartmouth_logo.png"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: new BoxDecoration(
              color: Color.fromARGB(100, 235, 238, 197),
              image: DecorationImage(
                  image: AssetImage('assets/images/dartmouth.jpeg'),
                  fit: BoxFit.cover,
                  opacity: 0.5),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Positioned(
                //   top: 0,
                //   left: 0,
                //   child: Image.asset(bottomImage,
                //       width: 100, fit: BoxFit.fitWidth),
                // ),
                SafeArea(child: child)
              ],
            )));
  }
}
