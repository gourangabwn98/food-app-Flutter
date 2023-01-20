import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.jpg'))),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 500,
              //color: Colors.red,
              width: double.infinity,
              child: Column(children: [
                Text(
                  "Sign in to continue",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 101),
                  child: Text(
                    "DOODHWALA",
                    style:
                        TextStyle(fontSize: 50, color: Colors.white, shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: Offset(5, 5),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: SignInButton(
                          Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Column(
                    children: [
                      Text(
                        "By signing in you are agreeing to our",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        "Terms and Pricacy Policy",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
