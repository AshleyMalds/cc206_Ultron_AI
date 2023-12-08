import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_ultron_ai/features/character_profiles.dart';
import 'package:cc206_ultron_ai/features/settings_page.dart';
import 'package:cc206_ultron_ai/features/scanner_web_page.dart';
import 'package:cc206_ultron_ai/features/login_page.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 28.0, right: 8.0),
                    // logo size
                    child: Image.asset('asset/logo.png', width: 80, height: 77),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ultron AI',
                    style: GoogleFonts.robotoSlab(
                      color: Colors.red,
                      fontSize: 30, // font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            buildListTile(context, 'Hero Scan', Icons.search, ScannerWebPage()),
            buildListTile(context, 'Character Profiles', Icons.person,
                CharacterProfiles()),
            buildListTile(context, 'Settings', Icons.settings, SettingsPage()),
            buildListTile(context, 'Logout', Icons.exit_to_app, LoginPage()),
            Spacer(),
            Divider(color: Colors.white),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '© 2023 Ultron AI. All rights reserved. Marvel characters and images are the property of Marvel.',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(
      BuildContext context, String title, IconData icon, Widget destination) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ListTile(
        title: Row(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 8),
            // ScaleTransition Text when hovering
            MouseRegion(
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 1, end: 1.1),
                duration: Duration(milliseconds: 200),
                builder: (context, scale, child) {
                  return Transform.scale(
                    scale: scale,
                    child: child,
                  );
                },
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 14, // font size
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context).pop(); // Close drawer
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
      ),
    );
  }
}
