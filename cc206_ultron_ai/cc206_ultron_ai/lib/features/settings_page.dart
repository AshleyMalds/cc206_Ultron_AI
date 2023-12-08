import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('asset/logo.png', width: 30, height: 30),
            SizedBox(width: 10),
            Text('Settings',
                style: GoogleFonts.robotoSlab(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          )
        ],
      ),
      drawer: HomeDrawer(),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'asset/superheroes.jpg', // Replace with your actual image path
              fit: BoxFit.cover,
            ),
          ),
          // Settings Content
          Center(
            child: SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 800.0, //maximum width
                  maxHeight: 770.0, //maximum height
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black
                      .withOpacity(0.7), // Darkened black background
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //settings container contents
                    children: <Widget>[
                      buildSettingRow("General Settings", [
                        buildSwitchTile("Dark Mode", true),
                        buildSwitchTile("Notifications", true),
                        buildTextTile("History", onTap: () {}),
                      ]),
                      Divider(
                        color: Colors.white, // Divider color white
                      ),
                      buildSettingRow("Appearance", [
                        buildTextTile("Font Size", onTap: () {}),
                        buildTextTile("Theme Color", onTap: () {}),
                      ]),
                      Divider(
                        color: Colors.white,
                      ),
                      buildSettingRow("Privacy", [
                        buildSwitchTile("Location Services", true),
                        buildSwitchTile("Personalized Ads", true),
                      ]),
                      Divider(
                        color: Colors.white,
                      ),
                      buildSettingRow("Account Settings", [
                        buildTextTile("Change Password", onTap: () {}),
                        buildTextTile("Security", onTap: () {}),
                        buildTextTile("Log Out", onTap: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        }),
                      ]),
                      SizedBox(height: 10), // Reduced spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Cancel',
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10), //spacing
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Save Changes',
                                style:
                                    GoogleFonts.robotoSlab(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSettingRow(String title, List<Widget> content) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.robotoSlab(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        SizedBox(height: 5),
        Divider(
          color: Colors.white,
          thickness: 2,
          height: 5,
        ),
        SizedBox(height: 5),
        Column(
          children: content,
        ),
      ],
    );
  }

  Widget buildSwitchTile(String title, bool value) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.robotoSlab(color: Colors.white), // Text color white
      ),
      trailing: Switch(
        value: value,
        onChanged: (bool value) {},
      ),
    );
  }

  Widget buildTextTile(String title, {VoidCallback? onTap}) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.roboto(color: Colors.white), // Text color white
      ),
      onTap: onTap,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
