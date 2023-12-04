import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart'; // Replace with the actual path to HomeDrawer

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.robotoSlab(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: HomeDrawer(), // Add the drawer here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white, // Set container color
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'General Settings',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Dark Mode',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
                  ),
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
                ListTile(
                  title: Text(
                    'Notifications',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
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
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Change Password',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Log Out',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
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
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Font Size',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Theme Color',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                Divider(),
                Text(
                  'Privacy',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Location Services',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
                  ),
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
                ListTile(
                  title: Text(
                    'Personalized Ads',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                    ),
                  ),
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
                SizedBox(height: 20), // Add some space
                ElevatedButton(
                  onPressed: () {
                    // Add functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Set button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Save Changes',
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
