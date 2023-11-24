import 'package:flutter/material.dart';
import 'learn_more_page.dart'; // Import the LearnMorePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('asset/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.65),
          ),
          Center(
            child: Container(
              height: 550,
              width: 700,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.network('asset/captain_america.png'),
                  SizedBox(height: 10),
                  Text('Captain America!', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to LearnMorePage when Learn More button is pressed
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LearnMorePage(
                            pageTitle: 'Captain America Profile',
                            content: """
                            Name: Steve Rogers

                            Age: 105

                            Superpower: None, Enhanced body strength, speed, agility, and endurance.

                            Steve Rogers was a frail young man who was rejected from the military because of his health. However, he was given the opportunity to participate in a secret experiment that would give him superhuman strength and agility. The experiment was a success, and Rogers became Captain America, a symbol of hope and freedom.
                            
                            Captain America fought alongside the Allies in World War II, and he played a key role in defeating the Axis powers. After the war, he was frozen in ice for nearly seventy years. He was eventually revived, and he joined the Avengers, a team of superheroes who protect the world from threats.

                            Captain America is a true hero. He is brave, selfless, and always willing to fight for what is right. He is an inspiration to people all over the world.
                            """,
                          ),
                        ),
                      );
                    },
                    child: Text('Learn More'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Results'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Close the LearnMorePage
          },
        ),
      ),
    );
  }
}
