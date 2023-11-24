import 'package:flutter/material.dart';
import 'package:cc206_ultron_ai/features/character_profiles.dart';
import 'package:cc206_ultron_ai/features/settings_page.dart';

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
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
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
        ],
      ),
    );
  }
}
