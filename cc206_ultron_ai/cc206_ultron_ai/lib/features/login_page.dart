import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
        backgroundColor: Colors.red, // Set Marvel-themed app bar color
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'asset/marvel_background.jpg'), // Marvel-themed background image
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color:
              Colors.black.withOpacity(0.7), // Set opacity for better viewing
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Login form fields
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        icon: Icon(Icons.email, color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      obscureText: true, // For password fields
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        icon: Icon(Icons.lock, color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                  ),

                  // Login button
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the ScannerWebPage
                      Navigator.of(context)
                          .pushReplacementNamed('/scanner-web');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Set Marvel-themed button color
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                    ),
                    child: const Text(
                      'Go to Scanner',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),

                  // Already have an account? Sign up option
                  const SizedBox(height: 19.0),
                  const Text("Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  const SizedBox(height: 14.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/sign-up');
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white, // Set text color to white
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
