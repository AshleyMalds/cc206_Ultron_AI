import 'package:flutter/material.dart';
import 'character_profiles.dart';
import 'settings_page.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class ScannerWebPage extends StatefulWidget {
  @override
  _ScannerWebPageState createState() => _ScannerWebPageState();
}

class _ScannerWebPageState extends State<ScannerWebPage> {
  String selectedPhoto = 'asset/captain_america2.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('asset/logo.png', width: 30, height: 30),
            SizedBox(width: 10),
            Text(
              'Hero Scanner',
              style: GoogleFonts.robotoSlab(
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
      drawer: HomeDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/superheroes.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.3),
          margin: EdgeInsets.symmetric(horizontal: 300),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                    selectedPhoto,
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              IconButton(
                onPressed: () {
                  _showCaptainAmericaProfile(context);
                },
                icon: Icon(
                  Icons.camera_alt,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
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
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            photoAssets[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
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
                      // Handle sharing options
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        // Sharing options menu items
                      ];
                    },
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CharacterProfiles(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
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
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage('asset/background3.jpg'),
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
                        'asset/marvel_logo.png',
                        width: 30,
                        height: 15,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Captain America',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Marvel',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Image.asset(
                  'asset/captain_america2.jpg',
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Captain America's profile details
                    ],
                  ),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.red,
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
