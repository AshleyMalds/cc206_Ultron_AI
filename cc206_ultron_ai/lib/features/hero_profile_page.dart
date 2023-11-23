import 'package:flutter/material.dart';

const String heroName = "Captain America";
const String heroImageAsset = "assets/captain_america.jpg";
const String heroBackstory = """
Steve Rogers was a frail young man who was rejected from the military because of his health. However, he was given the opportunity to participate in a secret experiment that would give him superhuman strength and agility. The experiment was a success, and Rogers became Captain America, a symbol of hope and freedom.

Captain America fought alongside the Allies in World War II, and he played a key role in defeating the Axis powers. After the war, he was frozen in ice for nearly seventy years. He was eventually revived, and he joined the Avengers, a team of superheroes who protect the world from threats.

Captain America is a true hero. He is brave, selfless, and always willing to fight for what is right. He is an inspiration to people all over the world.
""";

class HeroProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(heroName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(heroImageAsset),
            Text(heroBackstory),
          ],
        ),
      ),
    );
  }
}
// class HeroProfile {
//   final String name;
//   final String imageUrl;
//   final List<String> superpowers;

//   const HeroProfile({
//     required this.name,
//     required this.imageUrl,
//     required this.superpowers,
//   });
// }

// // Example usage:

// // Create a new hero profile.
// HeroProfile heroProfile = HeroProfile(
//   name: 'Superman',
//   imageUrl: 'https://example.com/superman.png',
//   superpowers: ['Flight', 'Super strength', 'Invulnerability'],
// );

// // Get the hero's name.
// String heroName = heroProfile.name;

// // Get the hero's image URL.
// String heroImageUrl = heroProfile.imageUrl;

// // Get the hero's superpowers.
// List<String> heroSuperpowers = heroProfile.superpowers;
