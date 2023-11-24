import 'package:cc206_kaon_/components/accept.dart';
import 'package:cc206_kaon_/features/Log-in_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 251, 252, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            Text(
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
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  buildTextField("NAME"),
                  SizedBox(height: 10),
                  buildTextField("EMAIL ADDRESS"),
                  SizedBox(height: 10),
                  buildTextField("USERNAME"),
                  SizedBox(height: 10),
                  buildTextField("PASSWORD"),
                  SizedBox(height: 100),
                  buildNextButton(context), // Pass the context to the function
                  SizedBox(height: 10),
                  buildAlreadyHaveAccountText(
                      context), // Pass the context to the function
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 1),
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        labelStyle: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }

  Widget buildNextButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignupAccept()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(145, 199, 137, 1),
          onPrimary: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'NEXT',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAlreadyHaveAccountText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an Account? ',
            style: TextStyle(
              color: Color.fromRGBO(35, 25, 26, 1),
              fontFamily: 'Montserrat',
              fontSize: 16,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
            ),
          ),
          WidgetSpan(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 168, 107, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
