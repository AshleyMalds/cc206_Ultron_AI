import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.red, // Set Marvel-themed app bar color
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'asset/superheroes.jpg'), // Marvel-themed background image
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
                  // Sign-up form fields
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        icon: Icon(Icons.person, color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                  ),
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

                  // Sign-up button
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle sign-up logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Set Marvel-themed button color
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                    ),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Already have an account? Login option
                  const SizedBox(height: 19.0),
                  Text('Already have an account?',
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 14.0),
                  TextButton(
                    onPressed: () {
                      // Navigate to the LoginPage
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white, // Set text color to white
                    ),
                    child: Text(
                      'Log In',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
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
