import 'package:flutter/material.dart';
import 'package:cc206_ultron_ai/features/sign_up_page.dart';
import 'package:cc206_ultron_ai/features/login_page.dart'; // Import LoginPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const SignUpPage(), // Initial route is SignUpPage
        '/login': (context) => const LoginPage(), // Define the LoginPage route
      },
    );
  }
}
