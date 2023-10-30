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
          // Wrap the content with a Container
          margin: EdgeInsets.symmetric(
              horizontal: 200), // Add more horizontal margin
          padding: EdgeInsets.all(16), // Add padding to the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.black,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Capture'),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Change the number of columns as needed
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
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
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
