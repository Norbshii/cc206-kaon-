import 'package:flutter/material.dart';
import 'package:cc206_kaon_/features/Log-in_page.dart';

class SignupAccept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 839,
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 251, 252, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
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
            SizedBox(height: 75),
            Container(
              width: 243,
              height: 209,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Componens.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Before we finish, please make sure that you read the and accept our terms of service, conditions, and privacy policy.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(157, 172, 193, 1),
                fontFamily: 'Montserrat',
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
            SizedBox(height: 85),
            Container(
              width: 300,
              height: 45,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      )
                    ],
                    color: Color.fromRGBO(145, 199, 137, 1),
                  ),
                  child: Center(
                    child: Text(
                      'ACCEPT',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
                // );
              },
              child: Text(
                'Terms and Conditions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 168, 107, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
