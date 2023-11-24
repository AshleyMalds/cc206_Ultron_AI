import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Login form fields
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

              // Login button
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the ScannerWebPage
                  Navigator.of(context).pushReplacementNamed('/scanner-web');
                },
                child: const Text('Go to Scanner'),
              ),

              // Already have an account? Sign up option
              const SizedBox(height: 19.0),
              const Text("Don't have an account?"),
              const SizedBox(height: 14.0),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/sign-up');
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
