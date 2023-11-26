import 'package:flutter/material.dart';
import 'package:cc206_ultron_ai/features/character_profiles.dart';
import 'package:cc206_ultron_ai/features/settings_page.dart';
import 'package:cc206_ultron_ai/features/scanner_web_page.dart';
import 'package:cc206_ultron_ai/features/login_page.dart'; // Import the LoginPage

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              'Ultron AI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Hero Scan'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ScannerWebPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Character Profiles'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CharacterProfiles(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Logout'), // Add Logout option
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginPage(), // Redirect to LoginPage
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
