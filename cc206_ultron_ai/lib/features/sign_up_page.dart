import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Sign-up form fields
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  icon: Icon(Icons.person),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                obscureText: true, // For password fields
                decoration: InputDecoration(
                  labelText: 'Password',
                  icon: Icon(Icons.lock),
                ),
              ),

              // Sign-up button
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up logic here
                },
                child: Text('Sign Up'),
              ),

              // Already have an account? Login option
              SizedBox(height: 19.0),
              Text('Already have an account?'),
              SizedBox(height: 14.0),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: SignUpPage(),
    ));
  }
}
