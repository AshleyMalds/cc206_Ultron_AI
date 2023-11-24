import 'package:flutter/material.dart';

class LearnMorePage extends StatelessWidget {
  final String pageTitle;
  final String content;

  const LearnMorePage(
      {Key? key, required this.pageTitle, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network('asset/captain_america.png', height: 200),
              SizedBox(height: 16),
              Text(
                """
                Name: Steve Rogers

                Age: 105

                Superpower: None, Enhanced body strength, speed, agility, and endurance.

                Steve Rogers was a frail young man who was rejected from the military because of his health. However, he was given the opportunity to participate in a secret experiment that would give him superhuman strength and agility. The experiment was a success, and Rogers became Captain America, a symbol of hope and freedom.
                
                Captain America fought alongside the Allies in World War II, and he played a key role in defeating the Axis powers. After the war, he was frozen in ice for nearly seventy years. He was eventually revived, and he joined the Avengers, a team of superheroes who protect the world from threats.

                Captain America is a true hero. He is brave, selfless, and always willing to fight for what is right. He is an inspiration to people all over the world.
                """,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
