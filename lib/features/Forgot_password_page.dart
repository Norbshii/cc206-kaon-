import 'package:cc206_kaon_/features/Log-in_page.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  TextEditingController emailController = TextEditingController();

  Widget buildTextField(String labelText) {
    return Container(
      width: 329,
      height: 45,
      child: Stack(
        children: <Widget>[
          Container(
            width: 329,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Color.fromRGBO(0, 0, 0, 1),
                width: 1,
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 15,
            child: Text(
              labelText,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Montserrat',
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.4285714285714286,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 390,
                height: 844,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 270,
                      left: 109,
                      child: Container(
                        width: 173,
                        height: 182,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Loginforgotpassword1.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 157,
                      left: 0,
                      right: 0,
                      child: Text(
                        'Forgot Password!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(35, 25, 26, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 210, // Adjust the top value to center vertically
                      left: 0,
                      right: 0,
                      child: Text(
                        'Don’t worry! Enter your registered email below to receive password reset instructions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(157, 172, 193, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 476,
                      left: 31,
                      child: buildTextField('EMAIL ADDRESS'),
                    ),
                    Positioned(
                      top: 560,
                      left: 45,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 300,
                          height: 45,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 300,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                      )
                                    ],
                                    color: Color.fromRGBO(145, 199, 137, 1),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 116,
                                child: Text(
                                  'SUBMIT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 53,
                      left: 0,
                      right: 0,
                      child: Text(
                        'Káon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(145, 199, 137, 1),
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
            ),
          ],
        ),
      ),
    );
  }
}
