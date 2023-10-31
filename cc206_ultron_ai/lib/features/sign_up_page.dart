import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  Navigator.of(context).pushNamed('/login');
                },
                child: const Text('Log In'),
              ),
              // Add a button to navigate to the HeroProfilePage
              ElevatedButton(
                onPressed: () {
                  // Navigate to the HeroProfilePage for Captain America.
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HeroProfilePage(heroName: "Captain America")));
                },
                child: Text("Captain America"),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     // Navigate to the HeroProfilePage
              //     Navigator.pushNamed(context, '/hero-profile');
              //   },
              //   child: const Text('Hero Profile'),
              //),
            ],
          ),
        ),
      ),
    );
  }

  void main() {
    runApp(const MaterialApp(
      home: SignUpPage(),
    ));
  }
}

// Add this class to your file.
class HeroProfilePage extends StatelessWidget {
  final String heroName;

  const HeroProfilePage({super.key, required this.heroName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${heroName} Profile'),
      ),
      body: Center(
        child: Text('This is the profile page for ${heroName}.'),
      ),
    );
  }
}
