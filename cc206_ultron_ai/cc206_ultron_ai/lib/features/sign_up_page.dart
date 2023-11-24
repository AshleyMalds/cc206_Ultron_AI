import 'package:flutter/material.dart';
import 'package:cc206_ultron_ai/features/login_page.dart'; // Import the LoginPage file

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Sign-up form fields
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  icon: Icon(Icons.person),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                obscureText: true, // For password fields
                decoration: const InputDecoration(
                  labelText: 'Password',
                  icon: Icon(Icons.lock),
                ),
              ),

              // Sign-up button
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up logic here
                },
                child: const Text('Sign Up'),
              ),

              // Already have an account? Login option
              const SizedBox(height: 19.0),
              const Text('Already have an account?'),
              const SizedBox(height: 14.0),
              TextButton(
                onPressed: () {
                  // Navigate to the LoginPage
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
