import 'package:flutter/material.dart';
import 'results.dart'; // Import the results.dart file
import 'character_profiles.dart';
import 'settings_page.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart'; // Import the HomeDrawer

class ScannerWebPage extends StatelessWidget {
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
                'asset/marvel_background.jpg'), // Marvel-themed background image
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color:
              Colors.black.withOpacity(0.7), // Set opacity for better viewing
          margin: EdgeInsets.symmetric(horizontal: 200),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 400,
                color: Colors.black,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          MyHomePage(), // Navigate to results.dart
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Set Marvel-themed button color
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                ),
                child: Text('Capture'),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: Icon(Icons.image),
                        title: Text('Image $index'),
                        onTap: () {},
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
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                    color: Colors.red,
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
}
