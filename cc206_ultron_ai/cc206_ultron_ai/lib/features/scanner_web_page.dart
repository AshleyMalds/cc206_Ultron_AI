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
        title: Row(
          children: [
            Image.asset('asset/logo.png', width: 30, height: 30),
            SizedBox(width: 10),
            Text(
              'Image Scanner',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          )
        ],
      ),
      drawer: HomeDrawer(), // Add the drawer here
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
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 300, // Adjusted width of the popup
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(
                    'asset/background3.jpg'), // Replace with the actual background image path
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/marvel_logo.png', // Replace with the actual Marvel logo path
                        width: 30, // Adjusted logo width
                        height: 15, // Adjusted logo height
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Captain America',
                        style: TextStyle(
                          color: Colors.white, // Set text color
                          fontFamily: 'Marvel', // Set Marvel-themed font
                          fontSize: 14.0, // Set font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Image.asset(
                  'asset/captain_america2.jpg', // Replace with the actual image path
                  height: 120, // Adjusted image height
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: Steve Rogers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        'Alias: Captain America',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        'Affiliation: The Avengers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Bio:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Steve Rogers, known by his superhero alias Captain America, is a patriotic and courageous '
                        'super-soldier. Created during World War II as part of the Super Soldier program, Steve underwent '
                        'a transformation that turned him into the pinnacle of human physical and mental potential.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Captain America wields a vibranium shield, which is not only an indestructible defensive weapon but '
                        'also a powerful offensive tool. He is a master tactician and an inspirational leader, guiding the '
                        'Avengers through some of their toughest battles.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
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
            ),
          ),
        );
      },
    );
  }
}
