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
                  // Handle login logic here
                  // For example, validate credentials and navigate to the main content.
                },
                child: const Text('Log In'),
              ),
              // Add a button to navigate to the HeroProfilePage
              ElevatedButton(
                onPressed: () {
                  // Navigate to the HeroProfilePage
                  Navigator.pushNamed(context, '/hero-profile');
                },
                child: const Text('Hero Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
