import 'package:flutter/material.dart';
import 'character_profiles.dart';
import 'settings_page.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart'; // Import the HomeDrawer

class ScannerWebPage extends StatefulWidget {
  @override
  _ScannerWebPageState createState() => _ScannerWebPageState();
}

class _ScannerWebPageState extends State<ScannerWebPage> {
  String selectedPhoto = 'asset/captain_america2.jpg'; // Initial selected photo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Scanner'),
        backgroundColor: Colors.red, // Set Marvel-themed app bar color
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset/superheroes.jpg', // Marvel-themed background image
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color:
              Colors.black.withOpacity(0.3), // Set opacity for better viewing
          margin: EdgeInsets.symmetric(horizontal: 100),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                selectedPhoto,
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
              ),
              IconButton(
                onPressed: () {
                  // Show Captain America's profile in a popup
                  _showCaptainAmericaProfile(context);
                },
                icon: Icon(
                  Icons.camera_alt, // Replace with camera icon
                  size: 40.0, // Adjust the size of the camera icon
                  color: Colors.white, // Set Marvel-themed button color
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> photoAssets = [
                      'asset/hulk.jpg',
                      'asset/iron_man.jpg',
                      'asset/doctorstrange.jpg',
                      'asset/spiderman.jpg',
                      'asset/wolverine.jpg',
                      'asset/captain_america2.jpg',
                      'asset/thor.jpg',
                      'asset/blackwidow.jpg',
                    ];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPhoto = photoAssets[index];
                        });
                      },
                      child: Card(
                        margin: EdgeInsets.all(8),
                        child: Image.asset(
                          photoAssets[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                    color: Colors.white,
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(Icons.share),
                    onSelected: (String value) {
                      if (value == 'Bluetooth') {
                        // Handle Bluetooth sharing
                      } else if (value == 'Gmail') {
                        // Handle Gmail sharing
                      } else if (value == 'ShareIt') {
                        // Handle ShareIt sharing
                      } else if (value == 'Yahoo') {
                        // Handle Yahoo sharing
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Bluetooth',
                          child: Row(
                            children: [
                              Icon(Icons.bluetooth),
                              SizedBox(width: 8),
                              Text('Bluetooth'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'Gmail',
                          child: Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('Gmail'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'ShareIt',
                          child: Row(
                            children: [
                              Icon(Icons.send),
                              SizedBox(width: 8),
                              Text('ShareIt'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'Yahoo',
                          child: Row(
                            children: [
                              Icon(Icons.mail),
                              SizedBox(width: 8),
                              Text('Yahoo'),
                            ],
                          ),
                        ),
                      ];
                    },
                    color: Colors.white,
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CharacterProfiles(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Set Marvel-themed button color
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                ),
                child: Text(
                  'View Character Profiles',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCaptainAmericaProfile(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red, // Set Marvel-themed background color
          title: Row(
            children: [
              Image.asset(
                'asset/marvel_logo.png', // Replace with the actual Marvel logo path
                width: 80, // Adjusted logo width
                height: 40, // Adjusted logo height
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10), // Add space between logo and text
              Text(
                'Captain America',
                style: TextStyle(
                  color: Colors.white, // Set text color
                  fontFamily: 'Marvel',
                ),
              ),
            ],
          ),
          content: Column(
            children: [
              Image.asset(
                'asset/captain_america2.jpg', // Replace with the actual image path
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                'Name: Steve Rogers',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Alias: Captain America',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Affiliation: The Avengers',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              // Add more details as needed
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Set button color
                onPrimary: Colors.red, // Set text color
              ),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
