import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart'; // Replace with the actual path to HomeDrawer

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.red, // Set Marvel-themed app bar color
      ),
      drawer: HomeDrawer(), // Add the drawer here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'General Settings',
              style: GoogleFonts.robotoSlab(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text(
                'Dark Mode',
                style: GoogleFonts.robotoSlab(),
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: GoogleFonts.robotoSlab(),
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            Divider(),
            Text(
              'Account Settings',
              style: GoogleFonts.robotoSlab(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text(
                'Change Password',
                style: GoogleFonts.robotoSlab(),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Log Out',
                style: GoogleFonts.robotoSlab(),
              ),
              onTap: () {
                // Navigate to the Login page
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
            Divider(),
            Text(
              'Appearance',
              style: GoogleFonts.robotoSlab(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text(
                'Font Size',
                style: GoogleFonts.robotoSlab(),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Theme Color',
                style: GoogleFonts.robotoSlab(),
              ),
              onTap: () {},
            ),
            Divider(),
            Text(
              'Privacy',
              style: GoogleFonts.robotoSlab(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text(
                'Location Services',
                style: GoogleFonts.robotoSlab(),
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            ListTile(
              title: Text(
                'Personalized Ads',
                style: GoogleFonts.robotoSlab(),
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
