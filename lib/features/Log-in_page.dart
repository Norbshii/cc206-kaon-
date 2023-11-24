import 'package:flutter/material.dart';
import 'package:cc206_kaon_/features/Forgot_password_page.dart';
import 'package:cc206_kaon_/features/Sign-up_page.dart';

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
                    buildLoginButton("LOGIN", context),
                    SizedBox(height: 20),
                    buildHoverContainer(
                      "Forgot password?",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forgotpassword(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color.fromRGBO(35, 25, 26, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 8),
                        buildHoverContainer(
                          "Sign Up",
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupPage(),
                              ),
                            );
                          },
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
                  color: Color(0xFF91C789),
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

  Widget buildLoginButton(String buttonText, BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => Afterlogin(),
          //   ),
          // );
        },
        child: Text(buttonText),
      ),
    );
  }

  Widget buildHoverContainer(String text, VoidCallback onTap,
      {TextStyle? textStyle}) {
    return Container(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle ??
                  TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
