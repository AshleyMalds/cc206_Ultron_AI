import 'package:flutter/material.dart';
import 'package:cc206_ultron_ai/features/scanner_web_page.dart';
import 'components/home_drawer.dart';
import 'package:cc206_ultron_ai/features/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Your App Name'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.scanner)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
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
    );
  }
}
