import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kàon Login'),
          backgroundColor: Colors
              .lightGreen, // Set the AppBar background color to light green
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Kàon',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20.0),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forgot Password?'),
                    ElevatedButton(
                      onPressed: () {
                        // Add your forgot password logic here
                      },
                      child: Text('Reset Password'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .lightGreen, // Change button color to light green
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Colors.lightGreen, // Change button color to light green
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 8.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add your sign-up logic here
                      },
                      child: Text('Sign up'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .lightGreen, // Change button color to light green
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
