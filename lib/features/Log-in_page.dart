import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 390,
        height: 839,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 520,
              left: -0.333984375,
              child: Container(
                width: 390,
                height: 319,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Image1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 374,
              left: 33.36705017089844,
              child: Container(
                width: 329,
                height: 295,
                child: Column(
                  children: <Widget>[
                    buildTextField("USERNAME"),
                    SizedBox(height: 20),
                    buildTextField("PASSWORD"),
                    SizedBox(height: 20),
                    buildLoginButton("LOGIN"),
                    SizedBox(height: 20),
                    buildForgotPasswordText("Forgot password?"),
                    SizedBox(height: 20),
                    buildSignUpText("Don’t have an account?", "Sign Up"),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -0.333984375,
              child: Image.asset(
                'assets/vector.png',
              ),
            ),
            Positioned(
              top: 238,
              left: 120,
              child: Text(
                'Káon',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(18, 20, 30, 1),
                  fontFamily: 'Poppins',
                  fontSize: 60,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return Container(
      width: 329,
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton(String buttonText) {
    return Container(
      width: 300,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          // Add your login logic here
        },
        child: Text(buttonText),
      ),
    );
  }

  Widget buildForgotPasswordText(String text) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromRGBO(35, 25, 26, 1),
          fontFamily: 'Montserrat',
          fontSize: 16,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1,
        ),
      ),
    );
  }

  Widget buildSignUpText(String prefixText, String suffixText) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            prefixText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(35, 25, 26, 1),
              fontFamily: 'Montserrat',
              fontSize: 16,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
          SizedBox(width: 0),
          Text(
            suffixText,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Montserrat',
              fontSize: 16,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
