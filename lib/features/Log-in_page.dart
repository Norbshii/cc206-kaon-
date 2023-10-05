import 'package:flutter/material.dart';

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Kàon'),
          SizedBox(height: 20.0),
          Text('USERNAME'),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Enter your username',
            ),
          ),
          SizedBox(height: 10.0),
          Text('PASSWORD'),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter your password',
            ),
          ),
          SizedBox(height: 10.0),
          Text('Forgot Password?'),
          ElevatedButton(
            onPressed: () {
              // Add your forgot password logic here
            },
            child: Text('Reset Password'),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              // Add your login logic here
            },
            child: Text('Login'),
          ),
          SizedBox(height: 10.0),
          Text('Don\'t have an account?'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Sign up'),
          ),
        ],
      ),
    );
  }
}
