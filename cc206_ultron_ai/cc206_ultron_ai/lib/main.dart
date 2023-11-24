import 'package:flutter/material.dart';
import 'features/scanner_web_page.dart';
import 'components/home_drawer.dart';
import 'features/settings_page.dart';
import 'features/sign_up_page.dart';
import 'features/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/sign-up',
      routes: {
        '/': (context) => DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Ultron AI'),
                  // bottom: TabBar(
                  //   tabs: [
                  //     Tab(icon: Icon(Icons.scanner)),
                  //     Tab(icon: Icon(Icons.settings)),
                  //   ],
                  // ),
                ),
                drawer: HomeDrawer(),
                body: TabBarView(
                  children: [
                    ScannerWebPage(),
                    SettingsPage(),
                  ],
                ),
              ),
            ),
        '/sign-up': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/scanner-web': (context) => ScannerWebPage(),
      },
    );
  }
}
