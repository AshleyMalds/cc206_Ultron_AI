// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Log In'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               // Login form fields
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   icon: Icon(Icons.email),
//                 ),
//               ),
//               TextFormField(
//                 obscureText: true, // For password fields
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   icon: Icon(Icons.lock),
//                 ),
//               ),

//               // Login button
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle login logic here
//                 },
//                 child: Text('Log In'),
//               ),

//               // Forgot password option
//               TextButton(
//                 onPressed: () {
//                   // Navigate to the forgot password page
//                 },
//                 child: Text('Forgot Password?'),
//               ),

//               // Don't have an account? Sign up option
//               SizedBox(height: 16.0),
//               Text('Don\'t have an account?'),
//               TextButton(
//                 onPressed: () {
//                   // Navigate to the sign-up page
//                 },
//                 child: Text('Sign Up'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: LoginPage(),
//   ));
// }
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Login form fields
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

              // Login button
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                  // For example, validate credentials and navigate to the main content.
                },
                child: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
