import 'package:flutter/material.dart';
import 'character_profiles.dart';
import 'settings_page.dart';
import 'package:cc206_ultron_ai/components/home_drawer.dart'; // Import the HomeDrawer

class ScannerWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Scanner Web Page'),
      ),
      body: Center(
        child: Container(
          //child: Container(
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
                onPressed: () {},
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
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
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
                child: Text('View Character Profiles'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
