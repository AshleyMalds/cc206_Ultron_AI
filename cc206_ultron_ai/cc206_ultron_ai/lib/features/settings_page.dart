import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'General Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            ListTile(
              title: Text('Notifications'),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            Divider(),
            Text(
              'Account Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Change Password'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // Navigate to the Login page
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
            Divider(),
            Text(
              'Appearance',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Font Size'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Theme Color'),
              onTap: () {},
            ),
            Divider(),
            Text(
              'Privacy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Location Services'),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            ListTile(
              title: Text('Personalized Ads'),
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
