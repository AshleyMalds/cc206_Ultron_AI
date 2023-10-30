import 'package:flutter/material.dart';
import 'character_profiles.dart';

class ScannerWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Scanner Web Page'),
      ),
      body: Center(
        child: Container(
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
                    crossAxisCount: 4, // Change the number of columns as needed
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
                    onPressed: () {},
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
                      // Add more sharing options as needed
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Bluetooth',
                          child: Row(
                            children: [
                              Icon(Icons.bluetooth),
                              SizedBox(width: 8), // Add some spacing
                              Text('Bluetooth'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'Gmail',
                          child: Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(width: 8), // Add some spacing
                              Text('Gmail'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'ShareIt',
                          child: Row(
                            children: [
                              Icon(Icons.send),
                              SizedBox(width: 8), // Add some spacing
                              Text('ShareIt'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'Yahoo',
                          child: Row(
                            children: [
                              Icon(Icons.mail),
                              SizedBox(width: 8), // Add some spacing
                              Text('Yahoo'),
                            ],
                          ),
                        ),
                        // Add more sharing options as needed
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
